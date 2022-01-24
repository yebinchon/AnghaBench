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
struct TYPE_3__ {scalar_t__ version; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ ShortenContext ;

/* Variables and functions */
 unsigned int AVERROR_INVALIDDATA ; 
 int ULONGSIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline unsigned int FUNC1(ShortenContext *s, int k)
{
    if (s->version != 0) {
        k = FUNC0(&s->gb, ULONGSIZE);
        if (k > 31U)
            return AVERROR_INVALIDDATA;
    }
    return FUNC0(&s->gb, k);
}