
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; char* descr; } ;


 TYPE_1__* cmds ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static int do_commands(int argc, const char **argv)
{
   int i = 0;
   (void)argc; (void)argv;
   while (cmds[i].name)
   {
      printf("%-20s %s\n", cmds[i].name, cmds[i].descr);
      i++;
   }
   return 0;
}
