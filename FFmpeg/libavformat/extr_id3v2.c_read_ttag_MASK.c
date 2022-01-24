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
typedef  char const uint8_t ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int AV_DICT_DONT_OVERWRITE ; 
 int AV_DICT_DONT_STRDUP_KEY ; 
 int AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 unsigned int ID3v1_GENRE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char const**,int*) ; 
 int /*<<< orphan*/ * ff_id3v1_genre_str ; 
 int FUNC6 (char const*,char*,unsigned int*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 

__attribute__((used)) static void FUNC8(AVFormatContext *s, AVIOContext *pb, int taglen,
                      AVDictionary **metadata, const char *key)
{
    uint8_t *dst;
    int encoding, dict_flags = AV_DICT_DONT_OVERWRITE | AV_DICT_DONT_STRDUP_VAL;
    unsigned genre;

    if (taglen < 1)
        return;

    encoding = FUNC4(pb);
    taglen--; /* account for encoding type byte */

    if (FUNC5(s, pb, encoding, &dst, &taglen) < 0) {
        FUNC2(s, AV_LOG_ERROR, "Error reading frame %s, skipped\n", key);
        return;
    }

    if (!(FUNC7(key, "TCON") && FUNC7(key, "TCO"))                         &&
        (FUNC6(dst, "(%d)", &genre) == 1 || FUNC6(dst, "%d", &genre) == 1) &&
        genre <= ID3v1_GENRE_MAX) {
        FUNC1(&dst);
        dst = FUNC3(ff_id3v1_genre_str[genre]);
    } else if (!(FUNC7(key, "TXXX") && FUNC7(key, "TXX"))) {
        /* dst now contains the key, need to get value */
        key = dst;
        if (FUNC5(s, pb, encoding, &dst, &taglen) < 0) {
            FUNC2(s, AV_LOG_ERROR, "Error reading frame %s, skipped\n", key);
            FUNC1(&key);
            return;
        }
        dict_flags |= AV_DICT_DONT_STRDUP_KEY;
    } else if (!*dst)
        FUNC1(&dst);

    if (dst)
        FUNC0(metadata, key, dst, dict_flags);
}