#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int ID3v1_GENRE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ff_id3v1_genre_str ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char const*,int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, const uint8_t *buf)
{
    int genre;

    if (!(buf[0] == 'T' &&
          buf[1] == 'A' &&
          buf[2] == 'G'))
        return -1;
    FUNC2(s, "title",   buf +  3, 30);
    FUNC2(s, "artist",  buf + 33, 30);
    FUNC2(s, "album",   buf + 63, 30);
    FUNC2(s, "date",    buf + 93,  4);
    FUNC2(s, "comment", buf + 97, 30);
    if (buf[125] == 0 && buf[126] != 0) {
        FUNC1(&s->metadata, "track", buf[126], 0);
    }
    genre = buf[127];
    if (genre <= ID3v1_GENRE_MAX)
        FUNC0(&s->metadata, "genre", ff_id3v1_genre_str[genre], 0);
    return 0;
}