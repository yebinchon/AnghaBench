
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int int32_t ;


 int INT64_C (int) ;

__attribute__((used)) static inline int32_t norm__(int64_t a, int bits)
{
    if (bits > 0)
        return (int32_t)((a + (INT64_C(1) << (bits - 1))) >> bits);
    else
        return (int32_t)a;
}
