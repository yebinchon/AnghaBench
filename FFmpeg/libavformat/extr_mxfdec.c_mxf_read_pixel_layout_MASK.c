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
struct TYPE_3__ {int /*<<< orphan*/  pix_fmt; } ;
typedef  TYPE_1__ MXFDescriptor ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(AVIOContext *pb, MXFDescriptor *descriptor)
{
    int code, value, ofs = 0;
    char layout[16] = {0}; /* not for printing, may end up not terminated on purpose */

    do {
        code = FUNC1(pb);
        value = FUNC1(pb);
        FUNC0(NULL, AV_LOG_TRACE, "pixel layout: code %#x\n", code);

        if (ofs <= 14) {
            layout[ofs++] = code;
            layout[ofs++] = value;
        } else
            break;  /* don't read byte by byte on sneaky files filled with lots of non-zeroes */
    } while (code != 0); /* SMPTE 377M E.2.46 */

    FUNC2(layout, &descriptor->pix_fmt);
}