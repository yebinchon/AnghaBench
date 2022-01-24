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
struct TYPE_3__ {int present; void* active_format_description; } ;
typedef  TYPE_1__ H264SEIAFD ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(H264SEIAFD *h, GetBitContext *gb, int size)
{
    int flag;

    if (size-- < 1)
        return AVERROR_INVALIDDATA;
    FUNC1(gb, 1);               // 0
    flag = FUNC0(gb, 1);         // active_format_flag
    FUNC1(gb, 6);               // reserved

    if (flag) {
        if (size-- < 1)
            return AVERROR_INVALIDDATA;
        FUNC1(gb, 4);           // reserved
        h->active_format_description = FUNC0(gb, 4);
        h->present                   = 1;
    }

    return 0;
}