#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int* p; } ;
struct TYPE_3__ {int* p; } ;
typedef  int DWORD ;

/* Variables and functions */
 int KEY_LENGTH_DWORDS_P256 ; 
 TYPE_2__ curve ; 
 TYPE_1__ curve_p256 ; 
 int FUNC0 (int*,int*,int*,int) ; 
 scalar_t__ FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int*,int) ; 

void FUNC8(DWORD *aminus, DWORD *u, uint32_t keyLength)
{
    DWORD v[KEY_LENGTH_DWORDS_P256];
    DWORD A[KEY_LENGTH_DWORDS_P256 + 1];
    DWORD C[KEY_LENGTH_DWORDS_P256 + 1];
    DWORD *modp;

    if (keyLength == KEY_LENGTH_DWORDS_P256) {
        modp = curve_p256.p;
    } else {
        modp = curve.p;
    }

    FUNC2(v, modp, keyLength);
    FUNC3(A, keyLength);
    FUNC3(C, keyLength);
    A[0] = 1;

    while (!FUNC4(u, keyLength)) {
        while (!(u[0] & 0x01)) { // u is even
            FUNC5(u, u, keyLength);
            if (!(A[0] & 0x01)) { // A is even
                FUNC5(A, A, keyLength);
            } else {
                A[keyLength] = FUNC0(A, A, modp, keyLength); // A =A+p
                FUNC5(A, A, keyLength);
                A[keyLength - 1] |= (A[keyLength] << 31);
            }
        }

        while (!(v[0] & 0x01)) { // v is even
            FUNC5(v, v, keyLength);
            if (!(C[0] & 0x01)) { // C is even
                FUNC5(C, C, keyLength);
            } else {
                C[keyLength] = FUNC0(C, C, modp, keyLength); // C =C+p
                FUNC5(C, C, keyLength);
                C[keyLength - 1] |= (C[keyLength] << 31);
            }
        }

        if (FUNC1(u, v, keyLength) >= 0) {
            FUNC6(u, u, v, keyLength);
            FUNC7(A, A, C, keyLength);
        } else {
            FUNC6(v, v, u, keyLength);
            FUNC7(C, C, A, keyLength);
        }
    }

    if (FUNC1(C, modp, keyLength) >= 0) {
        FUNC6(aminus, C, modp, keyLength);
    } else {
        FUNC2(aminus, C, keyLength);
    }
}