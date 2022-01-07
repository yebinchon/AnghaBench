
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;



__attribute__((used)) static void dss_sp_update_buf(int32_t *hist, int32_t *vector)
{
    int i;

    for (i = 114; i > 0; i--)
        vector[i + 72] = vector[i];

    for (i = 0; i < 72; i++)
        vector[72 - i] = hist[i];
}
