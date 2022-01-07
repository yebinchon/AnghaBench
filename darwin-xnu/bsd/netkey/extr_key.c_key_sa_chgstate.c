
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct secasvar {size_t state; TYPE_1__* sah; } ;
struct TYPE_2__ {int * savtree; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LIST_INSERT_HEAD (int *,struct secasvar*,int ) ;
 int LIST_REMOVE (struct secasvar*,int ) ;
 scalar_t__ __LIST_CHAINED (struct secasvar*) ;
 int chain ;
 int panic (char*) ;
 int sadb_mutex ;

void
key_sa_chgstate(
    struct secasvar *sav,
    u_int8_t state)
{

 if (sav == ((void*)0))
  panic("key_sa_chgstate called with sav == NULL");

 if (sav->state == state)
  return;

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);

 if (__LIST_CHAINED(sav))
  LIST_REMOVE(sav, chain);

 sav->state = state;
 LIST_INSERT_HEAD(&sav->sah->savtree[state], sav, chain);

}
