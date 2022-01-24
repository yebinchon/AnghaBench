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
struct TYPE_3__ {int bits; int /*<<< orphan*/  pb; int /*<<< orphan*/  (* put_bits ) (int /*<<< orphan*/ *,int,int) ;} ;
typedef  TYPE_1__ LZWEncodeState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static inline void FUNC2(LZWEncodeState * s, int c)
{
    FUNC0(0 <= c && c < 1 << s->bits);
    s->put_bits(&s->pb, s->bits, c);
}