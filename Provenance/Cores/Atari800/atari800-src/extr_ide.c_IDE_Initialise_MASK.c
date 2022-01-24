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
struct TYPE_3__ {int is_cf; } ;

/* Variables and functions */
 int FALSE ; 
 int IDE_debug ; 
 int IDE_enabled ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int TRUE ; 
 char* FUNC1 (char*) ; 
 TYPE_1__ device ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

int FUNC6(int *argc, char *argv[]) {
    int i, j, ret = TRUE;
    char *filename = NULL;

    if (IDE_debug)
        FUNC2(stderr, "ide: init\n");

    for (i = j = 1; i < *argc; i++) {
        int available = i + 1 < *argc;

        if (!FUNC5(argv[i], "-ide"  )) {
            if (!available) {
                FUNC0("Missing argument for '%s'", argv[i]);
                return FALSE;
            }
            filename = FUNC1(argv[++i]);
        } else if (!FUNC5(argv[i], "-ide_debug")) {
            IDE_debug = 1;
        } else if (!FUNC5(argv[i], "-ide_cf")) {
            device.is_cf = 1;
        } else {
             if (!FUNC5(argv[i], "-help")) {
                 FUNC0("\t-ide <file>      Enable IDE emulation");
                 FUNC0("\t-ide_debug       Enable IDE Debug Output");
                 FUNC0("\t-ide_cf          Enable CF emulation");
             }
             argv[j++] = argv[i];
        }
    }
    *argc = j;

    if (filename) {
        IDE_enabled = ret = FUNC4(&device, filename);
        FUNC3(filename);
    }

    return ret;
}