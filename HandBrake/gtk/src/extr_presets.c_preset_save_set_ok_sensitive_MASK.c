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
struct TYPE_3__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GtkEntry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static void
FUNC6(signal_user_data_t *ud)
{
    GtkEntry   * entry;
    GtkWidget  * ok_button;
    const char * name;
    const char * category;
    const char * category_name;
    gboolean     sensitive;

    ok_button = FUNC0(ud->builder, "preset_ok");

    category = FUNC2(ud->settings, "PresetCategory");
    entry = FUNC1(FUNC0(ud->builder, "PresetName"));
    name = FUNC3(entry);
    entry = FUNC1(FUNC0(ud->builder, "PresetCategoryName"));
    category_name = FUNC3(entry);

    sensitive = name[0] && (FUNC5(category, "new") || category_name[0]);
    FUNC4(ok_button, sensitive);
}