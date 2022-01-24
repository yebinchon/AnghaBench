#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_9__ {int /*<<< orphan*/ * z; int /*<<< orphan*/ * y; int /*<<< orphan*/ * x; } ;
typedef  TYPE_1__ Point ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int KEY_LENGTH_DWORDS_P256 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(Point *r, Point *p, Point *q, uint32_t keyLength)
{
    DWORD t1[KEY_LENGTH_DWORDS_P256];
    DWORD t2[KEY_LENGTH_DWORDS_P256];
    DWORD *x1;
    DWORD *x2;
    DWORD *x3;
    DWORD *y1;
    DWORD *y2;
    DWORD *y3;
    DWORD *z1;
    DWORD *z2;
    DWORD *z3;

    x1 = p->x; y1 = p->y; z1 = p->z;
    x2 = q->x; y2 = q->y; z2 = q->z;
    x3 = r->x; y3 = r->y; z3 = r->z;

    // if Q=infinity, return p
    if (FUNC2(z2, keyLength)) {
        FUNC7(r, p);
        return;
    }

    // if P=infinity, return q
    if (FUNC2(z1, keyLength)) {
        FUNC7(r, q);
        return;
    }

    FUNC5(t1, z1, keyLength);      // t1=z1^2
    FUNC4(t2, z1, t1, keyLength);  // t2=t1*z1
    FUNC4(t1, x2, t1, keyLength);  // t1=t1*x2
    FUNC4(t2, y2, t2, keyLength);  // t2=t2*y2

    FUNC6(t1, t1, x1, keyLength);  // t1=t1-x1
    FUNC6(t2, t2, y1, keyLength);  // t2=t2-y1

    if (FUNC2(t1, keyLength)) {
        if (FUNC2(t2, keyLength)) {
            FUNC0(r, q, keyLength) ;
            return;
        } else {
            FUNC1(z3, keyLength);
            return;                             // return infinity
        }
    }

    FUNC4(z3, z1, t1, keyLength);  // z3=z1*t1
    FUNC5(y3, t1, keyLength);      // t3=t1^2
    FUNC4(z1, y3, t1, keyLength);  // t4=t3*t1
    FUNC4(y3, y3, x1, keyLength);  // t3=t3*x1
    FUNC3(t1, y3, keyLength);            // t1=2*t3
    FUNC5(x3, t2, keyLength);      // x3=t2^2
    FUNC6(x3, x3, t1, keyLength);           // x3=x3-t1
    FUNC6(x3, x3, z1, keyLength);           // x3=x3-t4
    FUNC6(y3, y3, x3, keyLength);           // t3=t3-x3
    FUNC4(y3, y3, t2, keyLength);  // t3=t3*t2
    FUNC4(z1, z1, y1, keyLength);  // t4=t4*t1
    FUNC6(y3, y3, z1, keyLength);
}