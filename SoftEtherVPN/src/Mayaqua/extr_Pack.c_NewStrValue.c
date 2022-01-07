
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Size; void* Str; } ;
typedef TYPE_1__ VALUE ;


 void* Malloc (int) ;
 int StrCpy (void*,int,char*) ;
 int StrLen (char*) ;
 int Trim (void*) ;

VALUE *NewStrValue(char *str)
{
 VALUE *v;

 if (str == ((void*)0))
 {
  return ((void*)0);
 }


 v = Malloc(sizeof(VALUE));


 v->Size = StrLen(str) + 1;
 v->Str = Malloc(v->Size);
 StrCpy(v->Str, v->Size, str);

 Trim(v->Str);

 return v;
}
