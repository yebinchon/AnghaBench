
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int program_exit (int) ;

void exit_program(int ret)
{
    if (program_exit)
        program_exit(ret);

    exit(ret);
}
