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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int tid; int id; int version; int sec_num; int last_sec_num; } ;
typedef  TYPE_1__ SectionHeader ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC2(SectionHeader *h,
                                const uint8_t **pp, const uint8_t *p_end)
{
    int val;

    val = FUNC1(pp, p_end);
    if (val < 0)
        return val;
    h->tid = val;
    *pp += 2;
    val  = FUNC0(pp, p_end);
    if (val < 0)
        return val;
    h->id = val;
    val = FUNC1(pp, p_end);
    if (val < 0)
        return val;
    h->version = (val >> 1) & 0x1f;
    val = FUNC1(pp, p_end);
    if (val < 0)
        return val;
    h->sec_num = val;
    val = FUNC1(pp, p_end);
    if (val < 0)
        return val;
    h->last_sec_num = val;
    return 0;
}