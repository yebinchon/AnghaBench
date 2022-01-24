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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {scalar_t__ write_crc; } ;
typedef  TYPE_1__ MatroskaMuxContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(AVIOContext *pb, AVIOContext **dyn_cp, MatroskaMuxContext *mkv,
                                   uint32_t elementid)
{
    int ret;

    if ((ret = FUNC0(dyn_cp)) < 0)
        return ret;

    FUNC1(pb, elementid);
    if (mkv->write_crc)
        FUNC2(*dyn_cp, 6); /* Reserve space for CRC32 so position/size calculations using avio_tell() take it into account */

    return 0;
}