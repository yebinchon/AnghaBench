
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNI_TOKEN_LIST ;


 int * UniCopyToken (int *) ;
 int * UniNullToken () ;
 int * cmdline_uni_token ;

UNI_TOKEN_LIST *GetCommandLineUniToken()
{
 if (cmdline_uni_token == ((void*)0))
 {
  return UniNullToken();
 }
 else
 {
  return UniCopyToken(cmdline_uni_token);
 }
}
