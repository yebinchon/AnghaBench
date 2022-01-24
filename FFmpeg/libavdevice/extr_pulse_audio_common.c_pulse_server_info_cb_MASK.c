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
struct TYPE_4__ {int /*<<< orphan*/  default_source_name; int /*<<< orphan*/  default_sink_name; } ;
typedef  TYPE_1__ pa_server_info ;
typedef  int /*<<< orphan*/  pa_context ;
struct TYPE_5__ {int /*<<< orphan*/  error_code; void* default_device; scalar_t__ output; } ;
typedef  TYPE_2__ PulseAudioDeviceList ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(pa_context *c, const pa_server_info *i, void *userdata)
{
    PulseAudioDeviceList *info = userdata;
    if (info->output)
        info->default_device = FUNC1(i->default_sink_name);
    else
        info->default_device = FUNC1(i->default_source_name);
    if (!info->default_device)
        info->error_code = FUNC0(ENOMEM);
}