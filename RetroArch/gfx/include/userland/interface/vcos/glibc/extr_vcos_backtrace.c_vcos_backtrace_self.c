
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stack ;


 int backtrace (void**,int) ;
 char** backtrace_symbols (void**,int) ;
 int free (char**) ;
 int printf (char*,char*) ;

void vcos_backtrace_self(void)
{
}
