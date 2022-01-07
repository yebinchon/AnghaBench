
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeToken (int *) ;
 int UniFreeToken (int *) ;
 int * cmdline_token ;
 int * cmdline_uni_token ;

void FreeCommandLineTokens()
{
 if (cmdline_token != ((void*)0))
 {
  FreeToken(cmdline_token);
 }
 cmdline_token = ((void*)0);

 if (cmdline_uni_token != ((void*)0))
 {
  UniFreeToken(cmdline_uni_token);
 }
 cmdline_uni_token = ((void*)0);
}
