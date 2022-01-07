
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secasvar {int flags; int alg_auth; } ;
struct newah {int dummy; } ;
struct ah_algorithm {int (* sumsiz ) (struct secasvar*) ;} ;
struct ah {int dummy; } ;


 int SADB_X_EXT_OLD ;
 struct ah_algorithm* ah_algorithm_lookup (int ) ;
 int stub1 (struct secasvar*) ;
 int stub2 (struct secasvar*) ;

int
ah_hdrlen(struct secasvar *sav)
{
 const struct ah_algorithm *algo;
 int plen, ahlen;

 algo = ah_algorithm_lookup(sav->alg_auth);
 if (!algo)
  return 0;
 if (sav->flags & SADB_X_EXT_OLD) {

  plen = ((*algo->sumsiz)(sav) + 3) & ~(4 - 1);
  ahlen = plen + sizeof(struct ah);
 } else {

  plen = ((*algo->sumsiz)(sav) + 3) & ~(4 - 1);
  ahlen = plen + sizeof(struct newah);
 }

 return(ahlen);
}
