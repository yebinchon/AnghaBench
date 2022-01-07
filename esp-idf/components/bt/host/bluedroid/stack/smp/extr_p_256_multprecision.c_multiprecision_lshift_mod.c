
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {scalar_t__* p; } ;
struct TYPE_3__ {scalar_t__* p; } ;
typedef scalar_t__ DWORD ;


 int KEY_LENGTH_DWORDS_P192 ;
 int KEY_LENGTH_DWORDS_P256 ;
 TYPE_2__ curve ;
 TYPE_1__ curve_p256 ;
 scalar_t__ multiprecision_compare (scalar_t__*,scalar_t__*,int ) ;
 scalar_t__ multiprecision_lshift (scalar_t__*,scalar_t__*,int ) ;
 int multiprecision_sub (scalar_t__*,scalar_t__*,scalar_t__*,int ) ;

void multiprecision_lshift_mod(DWORD *c, DWORD *a, uint32_t keyLength)
{
    DWORD carrier;
    DWORD *modp;

    if (keyLength == KEY_LENGTH_DWORDS_P192) {
        modp = curve.p;
    } else if (keyLength == KEY_LENGTH_DWORDS_P256) {
        modp = curve_p256.p;
    } else {
        return;
    }

    carrier = multiprecision_lshift(c, a, keyLength);
    if (carrier) {
        multiprecision_sub(c, c, modp, keyLength);
    } else if (multiprecision_compare(c, modp, keyLength) >= 0) {
        multiprecision_sub(c, c, modp, keyLength);
    }
}
