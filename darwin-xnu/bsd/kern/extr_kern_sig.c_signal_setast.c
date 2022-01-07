
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;


 int act_set_astbsd (int ) ;

void
signal_setast(thread_t sig_actthread)
{
 act_set_astbsd(sig_actthread);
}
