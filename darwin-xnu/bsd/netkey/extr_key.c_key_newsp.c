
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secpolicy {int refcnt; int * req; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 struct secpolicy* keydb_newsecpolicy () ;
 int sadb_mutex ;

struct secpolicy *
key_newsp(void)
{
 struct secpolicy *newsp = ((void*)0);

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_NOTOWNED);
 newsp = keydb_newsecpolicy();
 if (!newsp)
  return newsp;

 newsp->refcnt = 1;
 newsp->req = ((void*)0);

 return newsp;
}
