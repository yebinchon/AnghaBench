#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  description; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ pa_sink_info ;
typedef  int /*<<< orphan*/  pa_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(pa_context *c, const pa_sink_info *dev,
                                       int eol, void *userdata)
{
    if (!eol)
        FUNC0(userdata, dev->name, dev->description);
}