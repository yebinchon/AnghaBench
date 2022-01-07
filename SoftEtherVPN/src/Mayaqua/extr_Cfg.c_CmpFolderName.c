
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Name; } ;
typedef TYPE_1__ FOLDER ;


 int StrCmpi (int ,int ) ;

int CmpFolderName(void *p1, void *p2)
{
 FOLDER *f1, *f2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 f1 = *(FOLDER **)p1;
 f2 = *(FOLDER **)p2;
 if (f1 == ((void*)0) || f2 == ((void*)0))
 {
  return 0;
 }
 return StrCmpi(f1->Name, f2->Name);
}
