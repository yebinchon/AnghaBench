
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double volume; double attack; double decay; } ;
typedef TYPE_1__ ChanParam ;



__attribute__((used)) static void update_volume(ChanParam *cp, double in)
{
    double delta = in - cp->volume;

    if (delta > 0.0)
        cp->volume += delta * cp->attack;
    else
        cp->volume += delta * cp->decay;
}
