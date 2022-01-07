
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mul23 (int const,int const) ;

__attribute__((used)) static void mod_a(const int *input, int *output)
{
    static const int cos_mod[16] = {
          4199362, 4240198, 4323885, 4454708,
          4639772, 4890013, 5221943, 5660703,
         -6245623, -7040975, -8158494, -9809974,
        -12450076, -17261920, -28585092, -85479984
    };

    int i, k;

    for (i = 0; i < 8; i++)
        output[i] = mul23(cos_mod[i], input[i] + input[8 + i]);

    for (i = 8, k = 7; i < 16; i++, k--)
        output[i] = mul23(cos_mod[i], input[k] - input[8 + k]);
}
