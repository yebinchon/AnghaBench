#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lang ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {int /*<<< orphan*/ * stream_languages; } ;
struct TYPE_4__ {TYPE_2__* priv_data; int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ ASFContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int,char*,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, int64_t size)
{
    AVIOContext *pb = s->pb;
    ASFContext *asf = s->priv_data;
    int j, ret;
    int stream_count = FUNC3(pb);
    for (j = 0; j < stream_count; j++) {
        char lang[6];
        unsigned int lang_len = FUNC2(pb);
        if ((ret = FUNC1(pb, lang_len, lang,
                                    sizeof(lang))) < lang_len)
            FUNC4(pb, lang_len - ret);
        if (j < 128)
            FUNC0(asf->stream_languages[j], lang,
                       sizeof(*asf->stream_languages));
    }

    return 0;
}