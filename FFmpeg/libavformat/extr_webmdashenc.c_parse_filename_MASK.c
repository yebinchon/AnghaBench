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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char* FUNC3 (int) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(char *filename, char **representation_id,
                          char **initialization_pattern, char **media_pattern) {
    char *underscore_pos = NULL;
    char *period_pos = NULL;
    char *temp_pos = NULL;
    char *filename_str = FUNC4(filename);
    int ret = 0;

    if (!filename_str) {
        ret = FUNC0(ENOMEM);
        goto end;
    }
    temp_pos = FUNC5(filename_str, "_");
    while (temp_pos) {
        underscore_pos = temp_pos + 1;
        temp_pos = FUNC5(temp_pos + 1, "_");
    }
    if (!underscore_pos) {
        ret = AVERROR_INVALIDDATA;
        goto end;
    }
    period_pos = FUNC5(underscore_pos, ".");
    if (!period_pos) {
        ret = AVERROR_INVALIDDATA;
        goto end;
    }
    *(underscore_pos - 1) = 0;
    if (representation_id) {
        *representation_id = FUNC3(period_pos - underscore_pos + 1);
        if (!(*representation_id)) {
            ret = FUNC0(ENOMEM);
            goto end;
        }
        FUNC6(*representation_id, underscore_pos, period_pos - underscore_pos + 1);
    }
    if (initialization_pattern) {
        *initialization_pattern = FUNC1("%s_$RepresentationID$.hdr",
                                              filename_str);
        if (!(*initialization_pattern)) {
            ret = FUNC0(ENOMEM);
            goto end;
        }
    }
    if (media_pattern) {
        *media_pattern = FUNC1("%s_$RepresentationID$_$Number$.chk",
                                     filename_str);
        if (!(*media_pattern)) {
            ret = FUNC0(ENOMEM);
            goto end;
        }
    }

end:
    FUNC2(&filename_str);
    return ret;
}