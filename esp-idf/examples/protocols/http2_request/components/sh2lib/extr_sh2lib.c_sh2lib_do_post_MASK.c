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
struct sh2lib_handle {char const* hostname; } ;
typedef  int /*<<< orphan*/  sh2lib_putpost_data_cb_t ;
typedef  int /*<<< orphan*/  sh2lib_frame_data_recv_cb_t ;
typedef  int /*<<< orphan*/  nva ;
typedef  int /*<<< orphan*/  nghttp2_nv ;

/* Variables and functions */
 int /*<<< orphan*/  const FUNC0 (char*,char const*) ; 
 int FUNC1 (struct sh2lib_handle*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct sh2lib_handle *hd, const char *path,
                   sh2lib_putpost_data_cb_t send_cb,
                   sh2lib_frame_data_recv_cb_t recv_cb)
{
    const nghttp2_nv nva[] = { FUNC0(":method", "POST"),
                               FUNC0(":scheme", "https"),
                               FUNC0(":authority", hd->hostname),
                               FUNC0(":path", path),
                             };
    return FUNC1(hd, nva, sizeof(nva) / sizeof(nva[0]), send_cb, recv_cb);
}