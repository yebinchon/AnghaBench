#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_7__ {int /*<<< orphan*/  filter_id; int /*<<< orphan*/  preset; } ;
typedef  TYPE_2__ filter_opts_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(signal_user_data_t *ud, const gchar *name,
               void *vopts, const void* data)
{
    (void)data;  // Silence "unused variable" warning

    filter_opts_t *opts = (filter_opts_t*)vopts;
    opts->filter_id = FUNC2(ud->settings,
                                             "PictureSharpenFilter");
    FUNC0(ud, name, opts->filter_id, opts->preset);

    FUNC1(ud, "PictureSharpenCustom",
                                  "sharpen", opts->filter_id);
}