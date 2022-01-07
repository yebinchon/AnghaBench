
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int int32_t ;


 int norm__ (int,int) ;

__attribute__((used)) static inline int32_t mul__(int32_t a, int32_t b, int bits)
{
    return norm__((int64_t)a * b, bits);
}
