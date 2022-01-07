
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bstart ;
 int btiming ;
 int nstime () ;

void
ctstarttimer(void)
{
    if (!btiming) {
        bstart = nstime();
        btiming = 1;
    }
}
