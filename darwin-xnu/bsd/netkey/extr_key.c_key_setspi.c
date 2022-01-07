
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {scalar_t__ le_next; scalar_t__ le_prev; } ;
struct secasvar {TYPE_1__ spihash; int spi; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int LIST_INSERT_HEAD (int *,struct secasvar*,int *) ;
 int LIST_REMOVE (struct secasvar*,int *) ;
 size_t SPIHASH (int ) ;
 int sadb_mutex ;
 int * spihash ;

__attribute__((used)) static void
key_setspi(
     struct secasvar *sav,
     u_int32_t spi)
{
 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_OWNED);
 sav->spi = spi;
 if (sav->spihash.le_prev || sav->spihash.le_next)
  LIST_REMOVE(sav, spihash);
 LIST_INSERT_HEAD(&spihash[SPIHASH(spi)], sav, spihash);
}
