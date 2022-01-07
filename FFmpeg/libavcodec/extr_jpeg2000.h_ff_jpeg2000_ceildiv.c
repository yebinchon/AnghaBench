
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static inline int ff_jpeg2000_ceildiv(int a, int b)
{
    return (a + (int64_t)b - 1) / b;
}
