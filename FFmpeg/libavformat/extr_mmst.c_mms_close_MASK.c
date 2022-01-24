#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_8__ {int /*<<< orphan*/  asf_header; int /*<<< orphan*/  streams; scalar_t__ mms_hd; } ;
struct TYPE_7__ {TYPE_3__ mms; } ;
typedef  TYPE_2__ MMSTContext ;
typedef  TYPE_3__ MMSContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(URLContext *h)
{
    MMSTContext *mmst = (MMSTContext *)h->priv_data;
    MMSContext *mms   = &mmst->mms;
    if(mms->mms_hd) {
        FUNC2(mmst);
        FUNC1(mms->mms_hd);
    }

    /* free all separately allocated pointers in mms */
    FUNC0(&mms->streams);
    FUNC0(&mms->asf_header);

    return 0;
}