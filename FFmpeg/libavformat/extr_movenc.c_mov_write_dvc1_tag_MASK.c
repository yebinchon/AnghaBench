#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int vos_len; int /*<<< orphan*/ * vos_data; } ;
typedef  TYPE_1__ MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVIOContext *pb, MOVTrack *track)
{
    uint8_t buf[7] = { 0 };
    int ret;

    if ((ret = FUNC3(track, buf)) < 0)
        return ret;

    FUNC0(pb, track->vos_len + 8 + sizeof(buf));
    FUNC2(pb, "dvc1");
    FUNC1(pb, buf, sizeof(buf));
    FUNC1(pb, track->vos_data, track->vos_len);

    return 0;
}