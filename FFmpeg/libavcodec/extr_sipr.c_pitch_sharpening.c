
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SUBFR_SIZE ;

__attribute__((used)) static void pitch_sharpening(int pitch_lag_int, float beta,
                             float *fixed_vector)
{
    int i;

    for (i = pitch_lag_int; i < SUBFR_SIZE; i++)
        fixed_vector[i] += beta * fixed_vector[i - pitch_lag_int];
}
