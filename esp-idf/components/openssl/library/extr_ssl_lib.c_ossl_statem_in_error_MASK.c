#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ state; } ;
struct TYPE_6__ {TYPE_1__ statem; } ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 scalar_t__ MSG_FLOW_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 

int FUNC1(const SSL *ssl)
{
    FUNC0(ssl);

    if (ssl->statem.state == MSG_FLOW_ERROR)
        return 1;

    return 0;
}