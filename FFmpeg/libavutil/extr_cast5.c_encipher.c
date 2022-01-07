
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int rounds; } ;
typedef TYPE_1__ AVCAST5 ;


 int AV_RB32 (int const*) ;
 int AV_WB32 (int *,int ) ;
 int F1 (int ,int ,int) ;
 int F2 (int ,int ,int) ;
 int F3 (int ,int ,int) ;

__attribute__((used)) static void encipher(AVCAST5* cs, uint8_t* dst, const uint8_t* src)
{
    uint32_t r, l, f, I;
    l = AV_RB32(src);
    r = AV_RB32(src + 4);
    F1(l, r, 1);
    F2(r, l, 2);
    F3(l, r, 3);
    F1(r, l, 4);
    F2(l, r, 5);
    F3(r, l, 6);
    F1(l, r, 7);
    F2(r, l, 8);
    F3(l, r, 9);
    F1(r, l, 10);
    F2(l, r, 11);
    F3(r, l, 12);
    if (cs->rounds == 16) {
        F1(l, r, 13);
        F2(r, l, 14);
        F3(l, r, 15);
        F1(r, l, 16);
    }
    AV_WB32(dst, r);
    AV_WB32(dst + 4, l);
}
