#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mime ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  description ;
struct TYPE_7__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  stream_index; } ;
struct TYPE_6__ {int id; int /*<<< orphan*/  disposition; TYPE_4__ attached_pic; int /*<<< orphan*/  index; TYPE_1__* codecpar; int /*<<< orphan*/  metadata; } ;
struct TYPE_5__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_MJPEG ; 
 int /*<<< orphan*/  AV_DISPOSITION_ATTACHED_PIC ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_4__*,unsigned int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(AVFormatContext *s, AVIOContext *pb, int length)
{
    char mime[1024];
    char description[1024];
    unsigned int filesize;
    AVStream *st;
    int ret;
    int64_t pos = FUNC7(pb);

    FUNC3(pb, INT_MAX, mime, sizeof(mime));
    if (FUNC8(mime, "image/jpeg"))
        goto done;

    FUNC4(pb);
    FUNC3(pb, INT_MAX, description, sizeof(description));
    filesize = FUNC5(pb);
    if (!filesize)
        goto done;

    st = FUNC2(s, NULL);
    if (!st)
        goto done;
    FUNC0(&st->metadata, "title", description, 0);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id   = AV_CODEC_ID_MJPEG;
    st->id = -1;
    ret = FUNC1(pb, &st->attached_pic, filesize);
    if (ret < 0)
        goto done;
    st->attached_pic.stream_index = st->index;
    st->attached_pic.flags       |= AV_PKT_FLAG_KEY;
    st->disposition              |= AV_DISPOSITION_ATTACHED_PIC;
done:
    FUNC6(pb, pos + length, SEEK_SET);
}