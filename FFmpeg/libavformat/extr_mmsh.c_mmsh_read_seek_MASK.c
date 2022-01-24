#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
typedef  TYPE_2__ URLContext ;
struct TYPE_9__ {int /*<<< orphan*/  asf_header_size; int /*<<< orphan*/  asf_header_read_size; } ;
struct TYPE_11__ {TYPE_1__ mms; int /*<<< orphan*/  location; } ;
typedef  TYPE_3__ MMSHContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64_t FUNC6(URLContext *h, int stream_index,
                        int64_t timestamp, int flags)
{
    MMSHContext *mmsh_old = h->priv_data;
    MMSHContext *mmsh     = FUNC3(sizeof(*mmsh));
    int ret;

    if (!mmsh)
        return FUNC0(ENOMEM);

    h->priv_data = mmsh;
    ret= FUNC5(h, mmsh_old->location, 0, FUNC1(timestamp, 0), 0);
    if(ret>=0){
        h->priv_data = mmsh_old;
        FUNC4(h);
        h->priv_data = mmsh;
        FUNC2(mmsh_old);
        mmsh->mms.asf_header_read_size = mmsh->mms.asf_header_size;
    }else {
        h->priv_data = mmsh_old;
        FUNC2(mmsh);
    }

    return ret;
}