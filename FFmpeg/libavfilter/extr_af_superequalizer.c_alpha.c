
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float pow (float,float) ;

__attribute__((used)) static float alpha(float a)
{
    if (a <= 21)
        return 0;
    if (a <= 50)
        return .5842f * pow(a - 21, 0.4f) + 0.07886f * (a - 21);
    return .1102f * (a - 8.7f);
}
