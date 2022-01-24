#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* type; void* options; } ;
typedef  TYPE_1__ section ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC7 () ; 
 TYPE_1__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,void*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

list *FUNC11(char *filename)
{
    FILE *file = FUNC3(filename, "r");
    if(file == 0) FUNC2(filename);
    char *line;
    int nu = 0;
    list *options = FUNC7();
    section *current = 0;
    while((line=FUNC1(file)) != 0){
        ++ nu;
        FUNC10(line);
        switch(line[0]){
            case '[':
                current = FUNC8(sizeof(section));
                FUNC6(options, current);
                current->options = FUNC7();
                current->type = line;
                break;
            case '\0':
            case '#':
            case ';':
                FUNC5(line);
                break;
            default:
                if(!FUNC9(line, current->options)){
                    FUNC4(stderr, "Config file error line %d, could parse: %s\n", nu, line);
                    FUNC5(line);
                }
                break;
        }
    }
    FUNC0(file);
    return options;
}