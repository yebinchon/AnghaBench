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
typedef  int uint8_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  ID3v2ExtraMeta ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int ID3v2_HEADER_SIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ff_id3v2_34_metadata_conv ; 
 int /*<<< orphan*/  ff_id3v2_4_metadata_conv ; 
 int FUNC3 (int*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  id3v2_2_metadata_conv ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC8(AVIOContext *pb, AVDictionary **metadata,
                                AVFormatContext *s, const char *magic,
                                ID3v2ExtraMeta **extra_meta, int64_t max_search_size)
{
    int len, ret;
    uint8_t buf[ID3v2_HEADER_SIZE];
    int found_header;
    int64_t start, off;

    if (max_search_size && max_search_size < ID3v2_HEADER_SIZE)
        return;

    start = FUNC2(pb);
    do {
        /* save the current offset in case there's nothing to read/skip */
        off = FUNC2(pb);
        if (max_search_size && off - start >= max_search_size - ID3v2_HEADER_SIZE) {
            FUNC1(pb, off, SEEK_SET);
            break;
        }

        ret = FUNC5(pb, ID3v2_HEADER_SIZE);
        if (ret >= 0)
            ret = FUNC0(pb, buf, ID3v2_HEADER_SIZE);
        if (ret != ID3v2_HEADER_SIZE) {
            FUNC1(pb, off, SEEK_SET);
            break;
        }
        found_header = FUNC3(buf, magic);
        if (found_header) {
            /* parse ID3v2 header */
            len = ((buf[6] & 0x7f) << 21) |
                  ((buf[7] & 0x7f) << 14) |
                  ((buf[8] & 0x7f) << 7) |
                   (buf[9] & 0x7f);
            FUNC6(pb, metadata, s, len, buf[3], buf[5], extra_meta);
        } else {
            FUNC1(pb, off, SEEK_SET);
        }
    } while (found_header);
    FUNC4(metadata, NULL, ff_id3v2_34_metadata_conv);
    FUNC4(metadata, NULL, id3v2_2_metadata_conv);
    FUNC4(metadata, NULL, ff_id3v2_4_metadata_conv);
    FUNC7(metadata);
}