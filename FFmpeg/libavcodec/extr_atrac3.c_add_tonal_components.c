
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos; int num_coefs; float* coef; } ;
typedef TYPE_1__ TonalComponent ;


 int FFMAX (int,int) ;

__attribute__((used)) static int add_tonal_components(float *spectrum, int num_components,
                                TonalComponent *components)
{
    int i, j, last_pos = -1;
    float *input, *output;

    for (i = 0; i < num_components; i++) {
        last_pos = FFMAX(components[i].pos + components[i].num_coefs, last_pos);
        input = components[i].coef;
        output = &spectrum[components[i].pos];

        for (j = 0; j < components[i].num_coefs; j++)
            output[j] += input[j];
    }

    return last_pos;
}
