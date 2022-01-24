#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  naf ;
typedef  int UINT8 ;
struct TYPE_16__ {int /*<<< orphan*/ * p; } ;
struct TYPE_15__ {int /*<<< orphan*/ * p; } ;
struct TYPE_14__ {int* z; int* x; int* y; } ;
typedef  TYPE_1__ Point ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int*,scalar_t__*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ KEY_LENGTH_DWORDS_P256 ; 
 TYPE_6__ curve ; 
 TYPE_5__ curve_p256 ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ *,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

void FUNC12(Point *q, Point *p, DWORD *n, uint32_t keyLength)
{
    uint32_t sign;
    UINT8 naf[256 / 4 + 1];
    uint32_t NumNaf;
    Point minus_p;
    Point r;
    DWORD *modp;

    if (keyLength == KEY_LENGTH_DWORDS_P256) {
        modp = curve_p256.p;
    } else {
        modp = curve.p;
    }

    FUNC11(&r);
    FUNC5(p->z, keyLength);
    p->z[0] = 1;

    // initialization
    FUNC11(q);

    // -p
    FUNC4(minus_p.x, p->x, keyLength);
    FUNC9(minus_p.y, modp, p->y, keyLength);

    FUNC5(minus_p.z, keyLength);
    minus_p.z[0] = 1;

    // NAF
    FUNC3(naf, 0, sizeof(naf));
    FUNC2(naf, &NumNaf, n, keyLength);

    for (int i = NumNaf - 1; i >= 0; i--) {
        FUNC10(&r, q);
        FUNC1(q, &r, keyLength);
        sign = (naf[i / 4] >> ((i % 4) * 2)) & 0x03;

        if (sign == 1) {
            FUNC10(&r, q);
            FUNC0(q, &r, p, keyLength);
        } else if (sign == 3) {
            FUNC10(&r, q);
            FUNC0(q, &r, &minus_p, keyLength);
        }
    }

    FUNC6(minus_p.x, q->z, keyLength);
    FUNC8(q->z, minus_p.x, keyLength);
    FUNC7(q->x, q->x, q->z, keyLength);
    FUNC7(q->z, q->z, minus_p.x, keyLength);
    FUNC7(q->y, q->y, q->z, keyLength);
}