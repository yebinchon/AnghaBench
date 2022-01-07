
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char wchar_t ;
struct TYPE_4__ {char** Token; int NumTokens; } ;
typedef TYPE_1__ UNI_TOKEN_LIST ;
typedef int UINT ;


 int Free (char*) ;
 int Lock (int ) ;
 void* Malloc (int) ;
 int UniStrCpy (char*,int ,char*) ;
 int UniStrLen (char*) ;
 TYPE_1__* UnixUniParseToken (char*,char*) ;
 int Unlock (int ) ;
 void* ZeroMalloc (int) ;
 int token_lock ;
 char* wcstok (char*,char*,char**) ;

UNI_TOKEN_LIST *UniParseToken(wchar_t *src, wchar_t *separator)
{
 return UnixUniParseToken(src, separator);

}
