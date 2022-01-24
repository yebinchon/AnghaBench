#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_10__ {scalar_t__ asf_header_read_size; scalar_t__ asf_header_size; int /*<<< orphan*/  remaining_in_len; } ;
struct TYPE_9__ {TYPE_3__ mms; } ;
typedef  TYPE_2__ MMSHContext ;
typedef  TYPE_3__ MMSContext ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(URLContext *h, uint8_t *buf, int size)
{
    int res = 0;
    MMSHContext *mmsh = h->priv_data;
    MMSContext *mms   = &mmsh->mms;
    do {
        if (mms->asf_header_read_size < mms->asf_header_size) {
            // copy asf header into buffer
            res = FUNC1(mms, buf, size);
        } else {
            if (!mms->remaining_in_len && (res = FUNC2(mmsh)))
                return res;
            res = FUNC0(mms, buf, size);
        }
    } while (!res);
    return res;
}