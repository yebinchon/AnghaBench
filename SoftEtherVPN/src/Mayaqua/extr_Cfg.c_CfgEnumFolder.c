
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {int Folders; } ;
typedef TYPE_1__ FOLDER ;
typedef int (* ENUM_FOLDER ) (TYPE_1__*,void*) ;


 TYPE_1__* LIST_DATA (int ,int) ;
 int LIST_NUM (int ) ;
 int YieldCpu () ;

void CfgEnumFolder(FOLDER *f, ENUM_FOLDER proc, void *param)
{
 UINT i;

 if (f == ((void*)0) || proc == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(f->Folders);i++)
 {
  FOLDER *ff = LIST_DATA(f->Folders, i);
  if (proc(ff, param) == 0)
  {
   break;
  }

  if ((i % 100) == 99)
  {
   YieldCpu();
  }
 }
}
