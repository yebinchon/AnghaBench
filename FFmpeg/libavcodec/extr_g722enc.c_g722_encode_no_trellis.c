
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;
typedef int G722Context ;


 int encode_byte (int *,int ,int const*) ;

__attribute__((used)) static void g722_encode_no_trellis(G722Context *c,
                                   uint8_t *dst, int nb_samples,
                                   const int16_t *samples)
{
    int i;
    for (i = 0; i < nb_samples; i += 2)
        encode_byte(c, dst++, &samples[i]);
}
