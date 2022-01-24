#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct AVFormatContext {int /*<<< orphan*/  metadata_header_padding; int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  id3; scalar_t__ id3v2_version; int /*<<< orphan*/  pics_to_write; } ;
typedef  TYPE_1__ MP3Context ;

/* Variables and functions */
 int /*<<< orphan*/  ID3v2_DEFAULT_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct AVFormatContext*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct AVFormatContext*) ; 

__attribute__((used)) static int FUNC4(struct AVFormatContext *s)
{
    MP3Context  *mp3 = s->priv_data;
    int ret;

    if (mp3->id3v2_version) {
        FUNC1(&mp3->id3, s->pb, mp3->id3v2_version, ID3v2_DEFAULT_MAGIC);
        ret = FUNC2(s, &mp3->id3);
        if (ret < 0)
            return ret;
    }

    if (!mp3->pics_to_write) {
        if (mp3->id3v2_version)
            FUNC0(&mp3->id3, s->pb, s->metadata_header_padding);
        FUNC3(s);
    }

    return 0;
}