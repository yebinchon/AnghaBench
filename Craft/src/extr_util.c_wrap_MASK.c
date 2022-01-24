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
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char*,char*,char**) ; 

int FUNC8(const char *input, int max_width, char *output, int max_length) {
    *output = '\0';
    char *text = FUNC2(sizeof(char) * (FUNC5(input) + 1));
    FUNC3(text, input);
    int space_width = FUNC0(' ');
    int line_number = 0;
    char *key1, *key2;
    char *line = FUNC7(text, "\r\n", &key1);
    while (line) {
        int line_width = 0;
        char *token = FUNC7(line, " ", &key2);
        while (token) {
            int token_width = FUNC4(token);
            if (line_width) {
                if (line_width + token_width > max_width) {
                    line_width = 0;
                    line_number++;
                    FUNC6(output, "\n", max_length - FUNC5(output) - 1);
                }
                else {
                    FUNC6(output, " ", max_length - FUNC5(output) - 1);
                }
            }
            FUNC6(output, token, max_length - FUNC5(output) - 1);
            line_width += token_width + space_width;
            token = FUNC7(NULL, " ", &key2);
        }
        line_number++;
        FUNC6(output, "\n", max_length - FUNC5(output) - 1);
        line = FUNC7(NULL, "\r\n", &key1);
    }
    FUNC1(text);
    return line_number;
}