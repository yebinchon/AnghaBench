
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_4__ {struct TYPE_4__* FullPath; } ;
typedef int LIST ;
typedef TYPE_1__ ERASE_FILE ;


 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int ReleaseList (int *) ;

void FreeEraseFileList(LIST *o)
{
 UINT i;

 if (o == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(o);i++)
 {
  ERASE_FILE *f = LIST_DATA(o, i);
  Free(f->FullPath);
  Free(f);
 }

 ReleaseList(o);
}
