
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_4__ {int JsonHint_IsDateTime; } ;
typedef int PACK ;
typedef TYPE_1__ ELEMENT ;


 TYPE_1__* PackAddInt64 (int *,char*,int ) ;

ELEMENT *PackAddTime64(PACK *p, char *name, UINT64 i)
{
 ELEMENT *e = PackAddInt64(p, name, i);
 if (e != ((void*)0))
 {
  e->JsonHint_IsDateTime = 1;
 }
 return e;
}
