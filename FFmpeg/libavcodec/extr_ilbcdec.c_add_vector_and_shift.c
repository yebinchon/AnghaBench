
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void add_vector_and_shift(int16_t *out, const int16_t *in1,
                                 const int16_t *in2, int length,
                                 int shift)
{
    for (int i = 0; i < length; i++)
        out[i] = (in1[i] + in2[i]) >> shift;
}
