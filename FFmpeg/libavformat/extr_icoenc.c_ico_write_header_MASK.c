#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int nb_streams; TYPE_1__** streams; TYPE_3__* pb; TYPE_2__* priv_data; } ;
struct TYPE_13__ {int seekable; } ;
struct TYPE_12__ {int nb_images; int /*<<< orphan*/  images; scalar_t__ current_image; } ;
struct TYPE_11__ {int /*<<< orphan*/  codecpar; } ;
typedef  TYPE_2__ IcoMuxContext ;
typedef  TYPE_3__ AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVIO_SEEKABLE_NORMAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s)
{
    IcoMuxContext *ico = s->priv_data;
    AVIOContext *pb = s->pb;
    int ret;
    int i;

    if (!(pb->seekable & AVIO_SEEKABLE_NORMAL)) {
        FUNC1(s, AV_LOG_ERROR, "Output is not seekable\n");
        return FUNC0(EINVAL);
    }

    ico->current_image = 0;
    ico->nb_images = s->nb_streams;

    FUNC5(pb, 0); // reserved
    FUNC5(pb, 1); // 1 == icon
    FUNC4(pb, 2); // skip the number of images

    for (i = 0; i < s->nb_streams; i++) {
        if ((ret = FUNC6(s, s->streams[i]->codecpar)))
            return ret;

        // Fill in later when writing trailer...
        FUNC4(pb, 16);
    }

    ico->images = FUNC2(ico->nb_images, sizeof(IcoMuxContext));
    if (!ico->images)
        return FUNC0(ENOMEM);

    FUNC3(pb);

    return 0;
}