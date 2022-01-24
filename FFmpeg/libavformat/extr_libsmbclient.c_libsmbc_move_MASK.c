#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  filename; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_8__ {int /*<<< orphan*/  dh; } ;
typedef  TYPE_2__ LIBSMBContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(URLContext *h_src, URLContext *h_dst)
{
    LIBSMBContext *libsmbc = h_src->priv_data;
    int ret;

    if ((ret = FUNC2(h_src)) < 0)
        goto cleanup;

    if ((libsmbc->dh = FUNC3(h_src->filename, h_dst->filename)) < 0) {
        ret = FUNC0(errno);
        goto cleanup;
    }

    ret = 0;

cleanup:
    FUNC1(h_src);
    return ret;
}