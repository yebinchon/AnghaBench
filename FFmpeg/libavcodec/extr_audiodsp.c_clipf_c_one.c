
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;



__attribute__((used)) static inline uint32_t clipf_c_one(uint32_t a, uint32_t mini,
                                   uint32_t maxi, uint32_t maxisign)
{
    if (a > mini)
        return mini;
    else if ((a ^ (1U << 31)) > maxisign)
        return maxi;
    else
        return a;
}
