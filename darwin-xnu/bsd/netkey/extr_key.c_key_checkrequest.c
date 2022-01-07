
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sockaddr_in {int sin_port; } ;
struct secasvar {int dummy; } ;
struct secasindex {int mode; int dst; } ;
struct ipsecrequest {int sp; } ;


 int ENOENT ;
 scalar_t__ IPSEC_LEVEL_REQUIRE ;



 int IPSEC_PORT_ANY ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LOG_DEBUG ;
 scalar_t__ ipsec_get_reqlevel (struct ipsecrequest*) ;
 int ipseclog (int ) ;
 int key_acquire (struct secasindex*,int ) ;
 struct secasvar* key_allocsa_policy (struct secasindex*) ;
 int panic (char*) ;
 int sadb_mutex ;

int
key_checkrequest(
     struct ipsecrequest *isr,
     struct secasindex *saidx,
     struct secasvar **sav)
{
 u_int level;
 int error;
 struct sockaddr_in *sin;

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_NOTOWNED);

 *sav = ((void*)0);


 if (isr == ((void*)0) || saidx == ((void*)0))
  panic("key_checkrequest: NULL pointer is passed.\n");


 switch (saidx->mode) {
  case 129:
  case 128:
   break;
  case 130:
  default:
   panic("key_checkrequest: Invalid policy defined.\n");
 }


 level = ipsec_get_reqlevel(isr);






 if (*sav == ((void*)0))
  *sav = key_allocsa_policy(saidx);


 if (*sav != ((void*)0))
  return 0;






 if (saidx->mode == 129) {
  sin = (struct sockaddr_in *)&saidx->dst;
  sin->sin_port = IPSEC_PORT_ANY;
 }
 if ((error = key_acquire(saidx, isr->sp)) != 0) {

  ipseclog((LOG_DEBUG, "key_checkrequest: error %d returned "
      "from key_acquire.\n", error));
  return error;
 }

 return level == IPSEC_LEVEL_REQUIRE ? ENOENT : 0;
}
