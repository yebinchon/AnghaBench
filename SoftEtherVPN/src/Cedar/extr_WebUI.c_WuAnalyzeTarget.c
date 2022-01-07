
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {void* Value; void* Name; } ;
struct TYPE_6__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ STRMAP_ENTRY ;
typedef int LIST ;


 int Add (int *,TYPE_2__*) ;
 void* CopyStr (char*) ;
 int FreeToken (TYPE_1__*) ;
 scalar_t__ Malloc (int) ;
 int * NewStrMap () ;
 TYPE_1__* ParseToken (char*,char*) ;
 scalar_t__ StartWith (char*,char*) ;
 int StrCpy (char*,size_t,char*) ;

__attribute__((used)) static LIST *WuAnalyzeTarget(char *target,char *filename, UINT size)
{
 char *start, tmp;

 if(target == ((void*)0) || filename == ((void*)0))
 {
  return ((void*)0);
 }


 if(StartWith(target,"http://"))
 {

  target += 7;


  while(*target != '/' && *target != '\0')
  {
   target ++;
  }


  if(*target == '\0')
  {
   return ((void*)0);
  }

  target++;
 }





 start = target;
 while(*target != '?' && *target != '\0')
 {
  target ++;
 }
 tmp = *target;
 *target = '\0';
 StrCpy(filename, size, start);
 *target = tmp;


 if(*target == '?')
 {
  LIST *params = NewStrMap();
  UINT i;
  TOKEN_LIST *tl;
  target++;
  tl =ParseToken(target,"&");
  for(i=0;i<tl->NumTokens;i++)
  {
   char *token = tl->Token[i];
   char *body = token;
   STRMAP_ENTRY *newentry = (STRMAP_ENTRY*)Malloc(sizeof(STRMAP_ENTRY));

   while(*body != '=' && *body != '\0')
   {
    body++;
   }
   if(*body == '=')
   {
    *body = '\0';
    body++;
   }
   newentry->Name = CopyStr(token);
   newentry->Value = CopyStr(body);
   Add(params, newentry);

  }
  FreeToken(tl);
  return params;
 }
 return ((void*)0);
}
