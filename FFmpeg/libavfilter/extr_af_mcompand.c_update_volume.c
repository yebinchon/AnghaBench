
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* volume; double* attack_rate; double* decay_rate; } ;
typedef TYPE_1__ CompBand ;



__attribute__((used)) static void update_volume(CompBand *cb, double in, int ch)
{
    double delta = in - cb->volume[ch];

    if (delta > 0.0)
        cb->volume[ch] += delta * cb->attack_rate[ch];
    else
        cb->volume[ch] += delta * cb->decay_rate[ch];
}
