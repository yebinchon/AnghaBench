
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SUINT ;



__attribute__((used)) static inline int gsm_mult(int a, int b)
{
    return (int)(a * (SUINT)b + (1 << 14)) >> 15;
}
