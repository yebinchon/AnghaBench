#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hb_list_t ;
struct TYPE_4__ {int /*<<< orphan*/ * list_title; } ;
struct TYPE_5__ {TYPE_1__ title_set; } ;
typedef  TYPE_2__ hb_handle_t ;

/* Variables and functions */

hb_list_t * FUNC0( hb_handle_t * h )
{
    return h->title_set.list_title;
}