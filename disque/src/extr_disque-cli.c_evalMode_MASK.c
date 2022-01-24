#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {char* eval; int /*<<< orphan*/  repeat; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int,char**,int /*<<< orphan*/ ) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 size_t FUNC5 (char*,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*,char*,size_t) ; 
 char* FUNC7 (char*,char*,int) ; 
 char* FUNC8 () ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 char** FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(int argc, char **argv) {
    sds script = FUNC8();
    FILE *fp;
    char buf[1024];
    size_t nread;
    char **argv2;
    int j, got_comma = 0, keys = 0;

    /* Load the script from the file, as an sds string. */
    fp = FUNC3(config.eval,"r");
    if (!fp) {
        FUNC4(stderr,
            "Can't open file '%s': %s\n", config.eval, FUNC10(errno));
        FUNC1(1);
    }
    while((nread = FUNC5(buf,1,sizeof(buf),fp)) != 0) {
        script = FUNC6(script,buf,nread);
    }
    FUNC2(fp);

    /* Create our argument vector */
    argv2 = FUNC11(sizeof(sds)*(argc+3));
    argv2[0] = FUNC9("EVAL");
    argv2[1] = script;
    for (j = 0; j < argc; j++) {
        if (!got_comma && argv[j][0] == ',' && argv[j][1] == 0) {
            got_comma = 1;
            continue;
        }
        argv2[j+3-got_comma] = FUNC9(argv[j]);
        if (!got_comma) keys++;
    }
    argv2[2] = FUNC7(FUNC8(),"%d",keys);

    /* Call it */
    return FUNC0(argc+3-got_comma, argv2, config.repeat);
}