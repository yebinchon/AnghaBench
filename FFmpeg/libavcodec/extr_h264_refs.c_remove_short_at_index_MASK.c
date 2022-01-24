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
struct TYPE_3__ {int short_ref_count; int /*<<< orphan*/ ** short_ref; } ;
typedef  int /*<<< orphan*/  H264Picture ;
typedef  TYPE_1__ H264Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static void FUNC2(H264Context *h, int i)
{
    FUNC0(i >= 0 && i < h->short_ref_count);
    h->short_ref[i] = NULL;
    if (--h->short_ref_count)
        FUNC1(&h->short_ref[i], &h->short_ref[i + 1],
                (h->short_ref_count - i) * sizeof(H264Picture*));
}