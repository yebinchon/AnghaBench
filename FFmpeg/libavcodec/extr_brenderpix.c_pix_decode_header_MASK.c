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
struct TYPE_3__ {void* height; void* width; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ PixHeader ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC4(PixHeader *out, GetByteContext *pgb)
{
    unsigned int header_len = FUNC1(pgb);

    out->format = FUNC2(pgb);
    FUNC3(pgb, 2);
    out->width  = FUNC0(pgb);
    out->height = FUNC0(pgb);

    // the header is at least 11 bytes long; we read the first 7
    if (header_len < 11)
        return AVERROR_INVALIDDATA;

    // skip the rest of the header
    FUNC3(pgb, header_len - 7);

    return 0;
}