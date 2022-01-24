#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int int64_t ;
struct TYPE_3__ {int den; int num; } ;
typedef  TYPE_1__ AVRational ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int,int) ; 

uint32_t FUNC3(AVRational q) {
    int64_t n;
    int shift;
    int sign = 0;

    if (q.den < 0) {
        q.den *= -1;
        q.num *= -1;
    }
    if (q.num < 0) {
        q.num *= -1;
        sign = 1;
    }

    if (!q.num && !q.den) return 0xFFC00000;
    if (!q.num) return 0;
    if (!q.den) return 0x7F800000 | (q.num & 0x80000000);

    shift = 23 + FUNC1(q.den) - FUNC1(q.num);
    if (shift >= 0) n = FUNC2(q.num, 1LL<<shift, q.den);
    else            n = FUNC2(q.num, 1, ((int64_t)q.den) << -shift);

    shift -= n >= (1<<24);
    shift += n <  (1<<23);

    if (shift >= 0) n = FUNC2(q.num, 1LL<<shift, q.den);
    else            n = FUNC2(q.num, 1, ((int64_t)q.den) << -shift);

    FUNC0(n <  (1<<24));
    FUNC0(n >= (1<<23));

    return sign<<31 | (150-shift)<<23 | (n - (1<<23));
}