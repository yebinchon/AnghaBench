#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {struct TYPE_5__* sr; } ;
struct TYPE_4__ {TYPE_3__* sec0; } ;
typedef  TYPE_1__ SessionData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC1(uint32_t session_id, SessionData *resp)
{
    if (!resp) {
        return;
    }

    FUNC0(resp->sec0->sr);
    FUNC0(resp->sec0);
    return;
}