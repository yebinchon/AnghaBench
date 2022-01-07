
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secasvar {size_t state; struct secashead* sah; } ;
struct secashead {int * savtree; } ;


 int EINVAL ;
 int LIST_INSERT_TAIL (int *,struct secasvar*,int ,int ) ;
 int LIST_REMOVE (struct secasvar*,int ) ;
 size_t SADB_SASTATE_MATURE ;
 scalar_t__ __LIST_CHAINED (struct secasvar*) ;
 int chain ;
 int secasvar ;

__attribute__((used)) static int
key_migratesav(struct secasvar *sav,
      struct secashead *newsah)
{
 if (sav == ((void*)0) || newsah == ((void*)0) || sav->state != SADB_SASTATE_MATURE) {
  return EINVAL;
 }


 if (__LIST_CHAINED(sav))
  LIST_REMOVE(sav, chain);

 sav->sah = newsah;
 LIST_INSERT_TAIL(&newsah->savtree[SADB_SASTATE_MATURE], sav, secasvar, chain);
 return 0;
}
