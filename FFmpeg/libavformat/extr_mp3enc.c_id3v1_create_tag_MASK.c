#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  value; } ;
struct TYPE_6__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int ID3v1_GENRE_MAX ; 
 int /*<<< orphan*/  ID3v1_TAG_SIZE ; 
 char FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ff_id3v1_genre_str ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, uint8_t *buf)
{
    AVDictionaryEntry *tag;
    int i, count = 0;

    FUNC4(buf, 0, ID3v1_TAG_SIZE); /* fail safe */
    buf[0] = 'T';
    buf[1] = 'A';
    buf[2] = 'G';
    /* we knowingly overspecify each tag length by one byte to compensate for the mandatory null byte added by av_strlcpy */
    count += FUNC3(s, "TIT2",    buf +  3, 30 + 1);       //title
    count += FUNC3(s, "TPE1",    buf + 33, 30 + 1);       //author|artist
    count += FUNC3(s, "TALB",    buf + 63, 30 + 1);       //album
    count += FUNC3(s, "TDRC",    buf + 93,  4 + 1);       //date
    count += FUNC3(s, "comment", buf + 97, 30 + 1);
    if ((tag = FUNC1(s->metadata, "TRCK", NULL, 0))) { //track
        buf[125] = 0;
        buf[126] = FUNC0(tag->value);
        count++;
    }
    buf[127] = 0xFF; /* default to unknown genre */
    if ((tag = FUNC1(s->metadata, "TCON", NULL, 0))) { //genre
        for(i = 0; i <= ID3v1_GENRE_MAX; i++) {
            if (!FUNC2(tag->value, ff_id3v1_genre_str[i])) {
                buf[127] = i;
                count++;
                break;
            }
        }
    }
    return count;
}