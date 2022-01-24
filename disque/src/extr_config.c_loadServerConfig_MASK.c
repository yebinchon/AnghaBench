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
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CONFIG_MAX_LINE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * stdin ; 

void FUNC9(char *filename, char *options) {
    sds config = FUNC6();
    char buf[CONFIG_MAX_LINE+1];

    /* Load the file content */
    if (filename) {
        FILE *fp;

        if (filename[0] == '-' && filename[1] == '\0') {
            fp = stdin;
        } else {
            if ((fp = FUNC3(filename,"r")) == NULL) {
                FUNC8(LL_WARNING,
                    "Fatal error, can't open config file '%s'", filename);
                FUNC0(1);
            }
        }
        while(FUNC2(buf,CONFIG_MAX_LINE+1,fp) != NULL)
            config = FUNC5(config,buf);
        if (fp != stdin) FUNC1(fp);
    }
    /* Append the additional options */
    if (options) {
        config = FUNC5(config,"\n");
        config = FUNC5(config,options);
    }
    FUNC4(config);
    FUNC7(config);
}