
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SUINT ;


 int AV_LOG_WARNING ;
 int av_log (int *,int ,char*,int) ;
 int* table_4_3_exp ;
 unsigned int* table_4_3_value ;

__attribute__((used)) static inline int l3_unscale(int value, int exponent)
{
    unsigned int m;
    int e;

    e = table_4_3_exp [4 * value + (exponent & 3)];
    m = table_4_3_value[4 * value + (exponent & 3)];
    e -= exponent >> 2;




    if (e > (SUINT)31)
        return 0;
    m = (m + ((1U << e)>>1)) >> e;

    return m;
}
