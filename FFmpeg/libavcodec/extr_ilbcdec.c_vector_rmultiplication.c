
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void vector_rmultiplication(int16_t *out, const int16_t *in,
                                   const int16_t *win,
                                   int length, int shift)
{
    for (int i = 0; i < length; i++)
        out[i] = (in[i] * win[-i]) >> shift;
}
