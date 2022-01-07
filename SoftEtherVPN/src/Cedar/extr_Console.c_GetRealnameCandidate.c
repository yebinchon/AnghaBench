
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_6__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int LIST ;


 int Insert (int *,char*) ;
 scalar_t__ IsNameInRealName (char*,char*) ;
 scalar_t__ IsOmissionName (char*,char*) ;
 TYPE_1__* ListToTokenList (int *) ;
 int * NewListFast (int *) ;
 TYPE_1__* NullToken () ;
 int ReleaseList (int *) ;
 scalar_t__ StrCmpi (char*,char*) ;

TOKEN_LIST *GetRealnameCandidate(char *input_name, TOKEN_LIST *real_name_list)
{
 TOKEN_LIST *ret;
 LIST *o;
 UINT i;
 bool ok = 0;

 if (input_name == ((void*)0) || real_name_list == ((void*)0))
 {
  return NullToken();
 }

 o = NewListFast(((void*)0));

 for (i = 0;i < real_name_list->NumTokens;i++)
 {
  char *name = real_name_list->Token[i];


  if (StrCmpi(name, input_name) == 0)
  {
   Insert(o, name);
   ok = 1;
   break;
  }
 }

 if (ok == 0)
 {

  for (i = 0;i < real_name_list->NumTokens;i++)
  {
   char *name = real_name_list->Token[i];

   if (IsOmissionName(input_name, name) || IsNameInRealName(input_name, name))
   {

    Insert(o, name);
    ok = 1;
   }
  }
 }

 if (ok)
 {

  ret = ListToTokenList(o);
 }
 else
 {
  ret = NullToken();
 }

 ReleaseList(o);

 return ret;
}
