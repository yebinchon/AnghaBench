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
struct sh2lib_handle {int /*<<< orphan*/ * hostname; int /*<<< orphan*/ * http2_tls; int /*<<< orphan*/ * http2_sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct sh2lib_handle *hd)
{
    if (hd->http2_sess) {
        FUNC2(hd->http2_sess);
        hd->http2_sess = NULL;
    }
    if (hd->http2_tls) {
	FUNC0(hd->http2_tls);
        hd->http2_tls = NULL;
    }
    if (hd->hostname) {
        FUNC1(hd->hostname);
        hd->hostname = NULL;
    }
}