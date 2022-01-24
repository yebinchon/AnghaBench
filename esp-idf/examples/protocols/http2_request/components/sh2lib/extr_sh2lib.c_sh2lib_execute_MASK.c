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
struct sh2lib_handle {int /*<<< orphan*/  http2_sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct sh2lib_handle *hd)
{
    int ret;
    ret = FUNC2(hd->http2_sess);
    if (ret != 0) {
        FUNC0(TAG, "[sh2-execute] HTTP2 session send failed %d", ret);
        return -1;
    }

    ret = FUNC1(hd->http2_sess);
    if (ret != 0) {
        FUNC0(TAG, "[sh2-execute] HTTP2 session recv failed %d", ret);
        return -1;
    }

    return 0;
}