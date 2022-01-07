
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TOKEN_LIST ;


 int * CopyToken (int *) ;
 int * NullToken () ;
 int * cmdline_token ;

TOKEN_LIST *GetCommandLineToken()
{
 if (cmdline_token == ((void*)0))
 {
  return NullToken();
 }
 else
 {
  return CopyToken(cmdline_token);
 }
}
