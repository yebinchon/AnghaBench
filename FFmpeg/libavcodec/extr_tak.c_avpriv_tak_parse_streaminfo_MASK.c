#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  TAKStreamInfo ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC2(TAKStreamInfo *s, const uint8_t *buf, int size)
{
    GetBitContext gb;
    int ret = FUNC1(&gb, buf, size);

    if (ret < 0)
        return AVERROR_INVALIDDATA;

    FUNC0(s, &gb);

    return 0;
}