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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 char* FUNC0 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char**,int*) ; 

__attribute__((used)) static void FUNC7(AVFormatContext *s, AVIOContext *pb, int taglen,
                      AVDictionary **metadata)
{
    uint8_t lang[4];
    uint8_t *descriptor = NULL; // 'Content descriptor'
    uint8_t *text = NULL;
    char *key = NULL;
    int encoding;
    int ok = 0;

    if (taglen < 1)
        goto error;

    encoding = FUNC4(pb);
    taglen--;

    if (FUNC5(pb, lang, 3) < 3)
        goto error;
    lang[3] = '\0';
    taglen -= 3;

    if (FUNC6(s, pb, encoding, &descriptor, &taglen) < 0)
        goto error;

    if (FUNC6(s, pb, encoding, &text, &taglen) < 0)
        goto error;

    // FFmpeg does not support hierarchical metadata, so concatenate the keys.
    key = FUNC0("lyrics-%s%s%s", descriptor[0] ? (char *)descriptor : "",
                                       descriptor[0] ? "-" : "",
                                       lang);
    if (!key)
        goto error;

    FUNC1(metadata, key, text, 0);

    ok = 1;
error:
    if (!ok)
        FUNC3(s, AV_LOG_ERROR, "Error reading lyrics, skipped\n");
    FUNC2(descriptor);
    FUNC2(text);
    FUNC2(key);
}