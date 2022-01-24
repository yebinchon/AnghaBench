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
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

list *FUNC9(char *filename)
{
    FILE *file = FUNC3(filename, "r");
    if(file == 0) FUNC2(filename);
    char *line;
    int nu = 0;
    list *options = FUNC6();
    while((line=FUNC1(file)) != 0){
        ++ nu;
        FUNC8(line);
        switch(line[0]){
            case '\0':
            case '#':
            case ';':
                FUNC5(line);
                break;
            default:
                if(!FUNC7(line, options)){
                    FUNC4(stderr, "Config file error line %d, could parse: %s\n", nu, line);
                    FUNC5(line);
                }
                break;
        }
    }
    FUNC0(file);
    return options;
}