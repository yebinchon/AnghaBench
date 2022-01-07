
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int* fixed_log_table ;

__attribute__((used)) static int fixed_log(int x)
{
    int i, ret, xpow, tmp;

    ret = x;
    xpow = x;
    for (i=0; i<10; i+=2){
        xpow = (int)(((int64_t)xpow * x + 0x40000000) >> 31);
        tmp = (int)(((int64_t)xpow * fixed_log_table[i] + 0x40000000) >> 31);
        ret -= tmp;

        xpow = (int)(((int64_t)xpow * x + 0x40000000) >> 31);
        tmp = (int)(((int64_t)xpow * fixed_log_table[i+1] + 0x40000000) >> 31);
        ret += tmp;
    }

    return ret;
}
