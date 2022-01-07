
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mul23 (int const,int) ;

__attribute__((used)) static void mod_b(int *input, int *output)
{
    static const int cos_mod[8] = {
        4214598, 4383036, 4755871, 5425934,
        6611520, 8897610, 14448934, 42791536
    };

    int i, k;

    for (i = 0; i < 8; i++)
        input[8 + i] = mul23(cos_mod[i], input[8 + i]);

    for (i = 0; i < 8; i++)
        output[i] = input[i] + input[8 + i];

    for (i = 8, k = 7; i < 16; i++, k--)
        output[i] = input[k] - input[8 + k];
}
