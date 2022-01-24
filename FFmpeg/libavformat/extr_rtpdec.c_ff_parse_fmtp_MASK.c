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
typedef  int /*<<< orphan*/  attr ;
typedef  int /*<<< orphan*/  PayloadContext ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const**,char*,int,char*,int) ; 
 int FUNC5 (char const*) ; 

int FUNC6(AVFormatContext *s,
                  AVStream *stream, PayloadContext *data, const char *p,
                  int (*parse_fmtp)(AVFormatContext *s,
                                    AVStream *stream,
                                    PayloadContext *data,
                                    const char *attr, const char *value))
{
    char attr[256];
    char *value;
    int res;
    int value_size = FUNC5(p) + 1;

    if (!(value = FUNC3(value_size))) {
        FUNC2(s, AV_LOG_ERROR, "Failed to allocate data for FMTP.\n");
        return FUNC0(ENOMEM);
    }

    // remove protocol identifier
    while (*p && *p == ' ')
        p++;                     // strip spaces
    while (*p && *p != ' ')
        p++;                     // eat protocol identifier
    while (*p && *p == ' ')
        p++;                     // strip trailing spaces

    while (FUNC4(&p,
                                       attr, sizeof(attr),
                                       value, value_size)) {
        res = parse_fmtp(s, stream, data, attr, value);
        if (res < 0 && res != AVERROR_PATCHWELCOME) {
            FUNC1(value);
            return res;
        }
    }
    FUNC1(value);
    return 0;
}