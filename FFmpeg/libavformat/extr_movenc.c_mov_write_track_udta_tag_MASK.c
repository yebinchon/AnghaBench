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
struct TYPE_3__ {int mode; } ;
typedef  TYPE_1__ MOVMuxContext ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int MODE_MOV ; 
 int MODE_MP4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int FUNC7(AVIOContext *pb, MOVMuxContext *mov,
                                    AVStream *st)
{
    AVIOContext *pb_buf;
    int ret, size;
    uint8_t *buf;

    if (!st)
        return 0;

    ret = FUNC2(&pb_buf);
    if (ret < 0)
        return ret;

    if (mov->mode & (MODE_MP4|MODE_MOV))
        FUNC6(pb_buf, st, "name", "title");

    if ((size = FUNC1(pb_buf, &buf)) > 0) {
        FUNC3(pb, size + 8);
        FUNC5(pb, "udta");
        FUNC4(pb, buf, size);
    }
    FUNC0(buf);

    return 0;
}