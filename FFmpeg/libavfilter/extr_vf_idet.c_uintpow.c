
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static uint64_t uintpow(uint64_t b,unsigned int e)
{
    uint64_t r=1;
    while(e--) r*=b;
    return r;
}
