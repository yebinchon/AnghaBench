
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (float*,float const*,int const) ;

__attribute__((used)) static inline void copy(const float *p1, float *p2, const int length)
{
    memcpy(p2, p1, length * sizeof(float));
}
