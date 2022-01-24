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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char*,char const*) ; 

__attribute__((used)) static void FUNC4(char *line, const char *search, const char *replace)
{
    char *sp = NULL;
    
    if ((sp = FUNC3(line, search)) == NULL) {
        return;
    }
    int search_len = FUNC2(search);
    int replace_len = FUNC2(replace);
    int tail_len = FUNC2(sp+search_len);
    
    FUNC1(sp+replace_len,sp+search_len,tail_len+1);
    FUNC0(sp, replace, replace_len);
    
    /* Do it recursively again until no more work to do */
    
    if ((sp = FUNC3(line, search))) {
        FUNC4(line, search, replace);
    }
}