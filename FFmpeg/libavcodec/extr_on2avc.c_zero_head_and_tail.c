
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (float*,int ,int) ;

__attribute__((used)) static void zero_head_and_tail(float *src, int len, int order0, int order1)
{
    memset(src, 0, sizeof(*src) * order0);
    memset(src + len - order1, 0, sizeof(*src) * order1);
}
