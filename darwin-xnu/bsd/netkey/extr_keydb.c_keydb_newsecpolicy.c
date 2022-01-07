
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secpolicy {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int M_SECA ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ _MALLOC (int,int ,int) ;
 int sadb_mutex ;

struct secpolicy *
keydb_newsecpolicy(void)
{
 struct secpolicy *p;

 LCK_MTX_ASSERT(sadb_mutex, LCK_MTX_ASSERT_NOTOWNED);

 return (struct secpolicy *)_MALLOC(sizeof(*p), M_SECA,
     M_WAITOK | M_ZERO);
}
