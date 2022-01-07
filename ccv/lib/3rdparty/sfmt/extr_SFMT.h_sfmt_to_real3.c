
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;



__attribute__((used)) inline static double sfmt_to_real3(uint32_t v)
{
    return (((double)v) + 0.5)*(1.0/4294967296.0);

}
