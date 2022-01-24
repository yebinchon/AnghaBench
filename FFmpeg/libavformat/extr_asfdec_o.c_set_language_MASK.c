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
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LANG_ISO639_2_BIBL ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ **,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(AVFormatContext *s, const char *rfc1766, AVDictionary **met)
{
    // language abbr should contain at least 2 chars
    if (rfc1766 && FUNC3(rfc1766) > 1) {
        const char primary_tag[3] = { rfc1766[0], rfc1766[1], '\0' }; // ignore country code if any
        const char *iso6392       = FUNC2(primary_tag,
                                                       AV_LANG_ISO639_2_BIBL);
        if (iso6392)
            if (FUNC0(met, "language", iso6392, 0) < 0)
                FUNC1(s, AV_LOG_WARNING, "av_dict_set failed.\n");
    }
}