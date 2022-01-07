
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int rand () ;

__attribute__((used)) static uint64_t rand64(void)
{
    uint64_t r = rand();
    r = (r << 32) | rand();
    return r;
}
