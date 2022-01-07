
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;



__attribute__((used)) static float normalizeAxis(DWORD pos, DWORD min, DWORD max)
{
    float fpos = (float) pos;
    float fmin = (float) min;
    float fmax = (float) max;

    return (2.f * (fpos - fmin) / (fmax - fmin)) - 1.f;
}
