
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * CipherList; } ;
typedef TYPE_1__ CEDAR ;


 int * CopyStr (char*) ;
 int Free (int *) ;

void SetCedarCipherList(CEDAR *cedar, char *name)
{

 if (cedar == ((void*)0))
 {
  return;
 }

 if (cedar->CipherList != ((void*)0))
 {
  Free(cedar->CipherList);
 }
 if (name != ((void*)0))
 {
  cedar->CipherList = CopyStr(name);
 }
 else
 {
  cedar->CipherList = ((void*)0);
 }
}
