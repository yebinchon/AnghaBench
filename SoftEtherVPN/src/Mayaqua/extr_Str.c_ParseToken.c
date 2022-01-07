
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {char** Token; int NumTokens; } ;
typedef TYPE_1__ TOKEN_LIST ;


 int Free (char*) ;
 int Lock (int ) ;
 void* Malloc (int) ;
 int StrCpy (char*,int ,char*) ;
 int StrLen (char*) ;
 int Unlock (int ) ;
 void* ZeroMalloc (int) ;
 char* strtok (char*,char*) ;
 int token_lock ;

TOKEN_LIST *ParseToken(char *src, char *separator)
{
 TOKEN_LIST *ret;
 char *tmp;
 char *str1, *str2;
 UINT len;
 UINT num;
 if (src == ((void*)0))
 {
  ret = ZeroMalloc(sizeof(TOKEN_LIST));
  ret->Token = ZeroMalloc(0);
  return ret;
 }
 if (separator == ((void*)0))
 {
  separator = " ,\t\r\n";
 }
 len = StrLen(src);
 str1 = Malloc(len + 1);
 str2 = Malloc(len + 1);
 StrCpy(str1, 0, src);
 StrCpy(str2, 0, src);

 Lock(token_lock);
 {
  tmp = strtok(str1, separator);
  num = 0;
  while (tmp != ((void*)0))
  {
   num++;
   tmp = strtok(((void*)0), separator);
  }
  ret = Malloc(sizeof(TOKEN_LIST));
  ret->NumTokens = num;
  ret->Token = (char **)Malloc(sizeof(char *) * num);
  num = 0;
  tmp = strtok(str2, separator);
  while (tmp != ((void*)0))
  {
   ret->Token[num] = (char *)Malloc(StrLen(tmp) + 1);
   StrCpy(ret->Token[num], 0, tmp);
   num++;
   tmp = strtok(((void*)0), separator);
  }
 }
 Unlock(token_lock);

 Free(str1);
 Free(str2);
 return ret;
}
