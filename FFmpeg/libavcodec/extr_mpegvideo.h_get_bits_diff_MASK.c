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
struct TYPE_3__ {int last_bits; int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ MpegEncContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC1(MpegEncContext *s){
    const int bits= FUNC0(&s->pb);
    const int last= s->last_bits;

    s->last_bits = bits;

    return bits - last;
}