
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_3__ {int Size; void* UniStr; } ;
typedef TYPE_1__ VALUE ;


 void* Malloc (int) ;
 int UniStrCpy (void*,int,int *) ;
 int UniStrSize (int *) ;
 int UniTrim (void*) ;

VALUE *NewUniStrValue(wchar_t *str)
{
 VALUE *v;

 if (str == ((void*)0))
 {
  return ((void*)0);
 }


 v = Malloc(sizeof(VALUE));


 v->Size = UniStrSize(str);
 v->UniStr = Malloc(v->Size);
 UniStrCpy(v->UniStr, v->Size, str);

 UniTrim(v->UniStr);

 return v;
}
