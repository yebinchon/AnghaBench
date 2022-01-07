
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int compute_mod(int a, int b)
{
    return a < 0 ? a%b + b : a%b;
}
