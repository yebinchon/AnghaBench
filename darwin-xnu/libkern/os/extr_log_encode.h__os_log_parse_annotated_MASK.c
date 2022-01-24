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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (char**,char*) ; 

__attribute__((used)) static void
FUNC2(char *annotated, const char **visibility, const char **library, const char **type)
{
    char *values[3] = { NULL };
    int cnt = 0;
    int idx = 0;
    
    for (; cnt < 3;) {
        char *token = FUNC1(&annotated, ", {}");
        if (token == NULL) {
            break;
        }
        
        if (*token == '\0') {
            continue;
        }
        
        values[cnt++] = token;
    }
    
    if ((cnt > 0) && (!FUNC0(values[0], "public") || !FUNC0(values[0], "private"))) {
        if (visibility != NULL) {
            (*visibility) = values[0];
        }
        
        idx++;
    }
    
    if (idx < cnt && (library != NULL) && (type != NULL)) {
        char *decoder = values[idx];
        
        for (cnt = 0; cnt < 3; ) {
            char *token = FUNC1(&decoder, ": {}");
            if (token == NULL) {
                break;
            }
            
            if (*token == '\0') {
                continue;
            }
            
            values[cnt++] = token;
        }
        
        if (cnt == 2) {
            (*library) = values[0];
            (*type) = values[1];
        }
        
        if (cnt == 1) {
            (*library) = "builtin";
            (*type) = values[0];
        }
    }
}