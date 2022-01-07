
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint64_t ;



__attribute__((used)) inline static double sfmt_to_res53(uint64_t v)
{
    return v * (1.0/18446744073709551616.0L);
}
