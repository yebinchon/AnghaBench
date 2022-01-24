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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FTPContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_AUTOMATIC ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int CONTROL_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(FTPContext *s, char **line, const int response_codes[])
{
    int err, i, dash = 0, result = 0, code_found = 0, linesize;
    char buf[CONTROL_BUFFER_SIZE];
    AVBPrint line_buffer;

    if (line)
        FUNC1(&line_buffer, 0, AV_BPRINT_SIZE_AUTOMATIC);

    while (!code_found || dash) {
        if ((err = FUNC4(s, buf, sizeof(buf))) < 0) {
            if (line)
                FUNC0(&line_buffer, NULL);
            return err;
        }

        FUNC3(s, AV_LOG_DEBUG, "%s\n", buf);

        linesize = FUNC5(buf);
        err = 0;
        if (linesize >= 3) {
            for (i = 0; i < 3; ++i) {
                if (buf[i] < '0' || buf[i] > '9') {
                    err = 0;
                    break;
                }
                err *= 10;
                err += buf[i] - '0';
            }
        }

        if (!code_found) {
            if (err >= 500) {
                code_found = 1;
                result = err;
            } else
                for (i = 0; response_codes[i]; ++i) {
                    if (err == response_codes[i]) {
                        code_found = 1;
                        result = err;
                        break;
                    }
                }
        }
        if (code_found) {
            if (line)
                FUNC2(&line_buffer, "%s\r\n", buf);
            if (linesize >= 4) {
                if (!dash && buf[3] == '-')
                    dash = err;
                else if (err == dash && buf[3] == ' ')
                    dash = 0;
            }
        }
    }

    if (line)
        FUNC0(&line_buffer, line);
    return result;
}