
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bdur ;
 scalar_t__ bstart ;
 scalar_t__ btiming ;
 scalar_t__ nstime () ;

void
ctstoptimer(void)
{
    if (btiming) {
        bdur += nstime() - bstart;
        btiming = 0;
    }
}
