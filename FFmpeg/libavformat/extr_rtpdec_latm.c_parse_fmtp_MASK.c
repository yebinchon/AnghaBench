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
typedef  int /*<<< orphan*/  PayloadContext ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s,
                      AVStream *stream, PayloadContext *data,
                      const char *attr, const char *value)
{
    int res;

    if (!FUNC3(attr, "config")) {
        res = FUNC2(stream, value);
        if (res < 0)
            return res;
    } else if (!FUNC3(attr, "cpresent")) {
        int cpresent = FUNC0(value);
        if (cpresent != 0)
            FUNC1(s,
                                  "RTP MP4A-LATM with in-band configuration");
    }

    return 0;
}