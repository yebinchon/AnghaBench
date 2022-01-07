
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float SqrtByCarmack(const float x){
    union {
        int i;
        float y;
    } float_int;

    float x2;
    const float threehalfs = 1.5f;

    x2 = x * 0.5f;
    float_int.y = x;

    float_int.i = 0x5f375a86 - (float_int.i >> 1);
    float_int.y = float_int.y * (threehalfs - (x2 * float_int.y * float_int.y));



    return (x * float_int.y);
}
