
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int Items; } ;
typedef int ITEM ;
typedef TYPE_1__ FOLDER ;
typedef int (* ENUM_ITEM ) (int *,void*) ;


 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

void CfgEnumItem(FOLDER *f, ENUM_ITEM proc, void *param)
{
 UINT i;

 if (f == ((void*)0) || proc == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(f->Items);i++)
 {
  ITEM *tt = LIST_DATA(f->Items, i);
  if (proc(tt, param) == 0)
  {
   break;
  }
 }
}
