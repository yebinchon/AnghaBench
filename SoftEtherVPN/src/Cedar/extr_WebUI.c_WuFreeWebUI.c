
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int WU_CONTEXT ;
struct TYPE_6__ {int PageList; int Contexts; scalar_t__ Value; struct TYPE_6__* Name; } ;
typedef TYPE_1__ WEBUI ;
typedef scalar_t__ UINT ;
typedef TYPE_1__ STRMAP_ENTRY ;


 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseList (int ) ;
 int WuFreeContext (int *) ;

bool WuFreeWebUI(WEBUI *wu)
{
 UINT i;

 if(wu == ((void*)0))
 {
  return 0;
 }

 for(i=0; i<LIST_NUM(wu->Contexts); i++)
 {
  STRMAP_ENTRY *se = LIST_DATA(wu->Contexts, i);
  Free(se->Name);
  WuFreeContext((WU_CONTEXT*)se->Value);
  Free(se);
 }
 ReleaseList(wu->Contexts);

 ReleaseList(wu->PageList);
 Free(wu);
 return 1;
}
