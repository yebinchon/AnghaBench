
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* opt; char* desc; } ;


 int PRINT_LINES_PAUSE ;
 TYPE_1__* helptext ;
 int printf (char*,char*,char*) ;
 int puts (char*) ;
 int tool_pressanykey () ;

void tool_help(void)
{
  int i;
  puts("Usage: curl [options...] <url>");
  for(i = 0; helptext[i].opt; i++) {
    printf(" %-19s %s\n", helptext[i].opt, helptext[i].desc);




  }
}
