
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int int16_t ;


 int ff_clz (int ) ;

__attribute__((used)) static int16_t norm_w32(int32_t a)
{
    if (a == 0) {
        return 0;
    } else if (a < 0) {
        a = ~a;
    }

    return ff_clz(a);
}
