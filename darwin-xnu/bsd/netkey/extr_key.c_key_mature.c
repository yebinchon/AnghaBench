
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct secasvar {int flags; int alg_enc; TYPE_4__* key_enc; TYPE_3__* key_auth; int alg_auth; int spi; TYPE_2__* sah; } ;
struct ipcomp_algorithm {int dummy; } ;
struct esp_algorithm {int keymin; int keymax; scalar_t__ (* mature ) (struct secasvar*) ;} ;
struct ah_algorithm {int keymin; int keymax; scalar_t__ (* mature ) (struct secasvar*) ;} ;
struct TYPE_8__ {int sadb_key_bits; } ;
struct TYPE_7__ {int sadb_key_bits; } ;
struct TYPE_5__ {int proto; } ;
struct TYPE_6__ {TYPE_1__ saidx; } ;


 int EINVAL ;
 int EPROTONOSUPPORT ;



 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LOG_DEBUG ;
 int SADB_AALG_NONE ;
 int SADB_EALG_NONE ;
 int SADB_SASTATE_MATURE ;
 int SADB_SATYPE_AH ;
 int SADB_SATYPE_ESP ;
 int SADB_X_EXT_DERIV ;
 int SADB_X_EXT_OLD ;
 int SADB_X_EXT_RAWCPI ;
 struct ah_algorithm* ah_algorithm_lookup (int ) ;
 struct esp_algorithm* esp_algorithm_lookup (int ) ;
 struct ipcomp_algorithm* ipcomp_algorithm_lookup (int ) ;
 int ipseclog (int ) ;
 int key_sa_chgstate (struct secasvar*,int ) ;
 int ntohl (int ) ;
 int sadb_mutex ;
 scalar_t__ stub1 (struct secasvar*) ;
 scalar_t__ stub2 (struct secasvar*) ;

__attribute__((used)) static int
key_mature(
     struct secasvar *sav)
{
 int mature;
 int checkmask = 0;
 int mustmask = 0;

 mature = 0;

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);


 switch (sav->sah->saidx.proto) {
  case 129:
  case 130:


   if (ntohl(sav->spi) <= 255) {
    ipseclog((LOG_DEBUG,
        "key_mature: illegal range of SPI %u.\n",
        (u_int32_t)ntohl(sav->spi)));
    return EINVAL;
   }
   break;
 }


 switch (sav->sah->saidx.proto) {
  case 129:

   if ((sav->flags & SADB_X_EXT_OLD)
    && (sav->flags & SADB_X_EXT_DERIV)) {
    ipseclog((LOG_DEBUG, "key_mature: "
        "invalid flag (derived) given to old-esp.\n"));
    return EINVAL;
   }
   if (sav->alg_auth == SADB_AALG_NONE)
    checkmask = 1;
   else
    checkmask = 3;
   mustmask = 1;
   break;
  case 130:

   if (sav->flags & SADB_X_EXT_DERIV) {
    ipseclog((LOG_DEBUG, "key_mature: "
        "invalid flag (derived) given to AH SA.\n"));
    return EINVAL;
   }
   if (sav->alg_enc != SADB_EALG_NONE) {
    ipseclog((LOG_DEBUG, "key_mature: "
        "protocol and algorithm mismated.\n"));
    return(EINVAL);
   }
   checkmask = 2;
   mustmask = 2;
   break;
  case 128:
   if (sav->alg_auth != SADB_AALG_NONE) {
    ipseclog((LOG_DEBUG, "key_mature: "
        "protocol and algorithm mismated.\n"));
    return(EINVAL);
   }
   if ((sav->flags & SADB_X_EXT_RAWCPI) == 0
    && ntohl(sav->spi) >= 0x10000) {
    ipseclog((LOG_DEBUG, "key_mature: invalid cpi for IPComp.\n"));
    return(EINVAL);
   }
   checkmask = 4;
   mustmask = 4;
   break;
  default:
   ipseclog((LOG_DEBUG, "key_mature: Invalid satype.\n"));
   return EPROTONOSUPPORT;
 }


 if ((checkmask & 2) != 0) {
  const struct ah_algorithm *algo;
  int keylen;

  algo = ah_algorithm_lookup(sav->alg_auth);
  if (!algo) {
   ipseclog((LOG_DEBUG,"key_mature: "
       "unknown authentication algorithm.\n"));
   return EINVAL;
  }


  if (sav->key_auth)
   keylen = sav->key_auth->sadb_key_bits;
  else
   keylen = 0;
  if (keylen < algo->keymin || algo->keymax < keylen) {
   ipseclog((LOG_DEBUG,
       "key_mature: invalid AH key length %d "
       "(%d-%d allowed)\n",
       keylen, algo->keymin, algo->keymax));
   return EINVAL;
  }

  if (algo->mature) {
   if ((*algo->mature)(sav)) {

    return EINVAL;
   } else
    mature = SADB_SATYPE_AH;
  }

  if ((mustmask & 2) != 0 && mature != SADB_SATYPE_AH) {
   ipseclog((LOG_DEBUG, "key_mature: no satisfy algorithm for AH\n"));
   return EINVAL;
  }
 }


 if ((checkmask & 1) != 0) {
  ipseclog((LOG_DEBUG, "key_mature: ESP not supported in this configuration\n"));
  return EINVAL;

 }


 if ((checkmask & 4) != 0) {
  const struct ipcomp_algorithm *algo;


  algo = ipcomp_algorithm_lookup(sav->alg_enc);
  if (!algo) {
   ipseclog((LOG_DEBUG, "key_mature: unknown compression algorithm.\n"));
   return EINVAL;
  }
 }

 key_sa_chgstate(sav, SADB_SASTATE_MATURE);

 return 0;
}
