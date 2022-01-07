
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int divide3(int x)
{
    return (int)((x+1U)*21845 + 10922) >> 16;
}
