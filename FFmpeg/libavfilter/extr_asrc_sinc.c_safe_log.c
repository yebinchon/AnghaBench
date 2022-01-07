
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_assert0 (int) ;
 float logf (float) ;

__attribute__((used)) static float safe_log(float x)
{
    av_assert0(x >= 0);
    if (x)
        return logf(x);
    return -26;
}
