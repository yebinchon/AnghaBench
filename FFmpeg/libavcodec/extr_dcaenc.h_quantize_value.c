
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int e; int m; } ;
typedef TYPE_1__ softfloat ;
typedef int int32_t ;


 int mul32 (int,int ) ;

__attribute__((used)) static inline int32_t quantize_value(int32_t value, softfloat quant)
{
    int32_t offset = 1 << (quant.e - 1);

    value = mul32(value, quant.m) + offset;
    value = value >> quant.e;
    return value;
}
