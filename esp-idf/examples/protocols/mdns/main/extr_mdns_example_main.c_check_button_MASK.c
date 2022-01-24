#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  EXAMPLE_BUTTON_GPIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    static bool old_level = true;
    bool new_level = FUNC0(EXAMPLE_BUTTON_GPIO);
    if (!new_level && old_level) {
        FUNC1("esp32");
        FUNC2("_arduino", "_tcp");
        FUNC2("_http", "_tcp");
        FUNC2("_printer", "_tcp");
        FUNC2("_ipp", "_tcp");
        FUNC2("_afpovertcp", "_tcp");
        FUNC2("_smb", "_tcp");
        FUNC2("_ftp", "_tcp");
        FUNC2("_nfs", "_tcp");
    }
    old_level = new_level;
}