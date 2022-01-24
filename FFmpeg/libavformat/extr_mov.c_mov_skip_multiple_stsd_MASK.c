#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_5__ {int video_codec_id; } ;
struct TYPE_4__ {TYPE_3__* fc; } ;
typedef  TYPE_1__ MOVContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ff_codec_movvideo_tags ; 

__attribute__((used)) static int FUNC5(MOVContext *c, AVIOContext *pb,
                                  int codec_tag, int format,
                                  int64_t size)
{
    int video_codec_id = FUNC4(ff_codec_movvideo_tags, format);

    if (codec_tag &&
         (codec_tag != format &&
          // AVID 1:1 samples with differing data format and codec tag exist
          (codec_tag != FUNC0("AV1x") || format != FUNC0("AVup")) &&
          // prores is allowed to have differing data format and codec tag
          codec_tag != FUNC0("apcn") && codec_tag != FUNC0("apch") &&
          // so is dv (sigh)
          codec_tag != FUNC0("dvpp") && codec_tag != FUNC0("dvcp") &&
          (c->fc->video_codec_id ? video_codec_id != c->fc->video_codec_id
                                 : codec_tag != FUNC1('j','p','e','g')))) {
        /* Multiple fourcc, we skip JPEG. This is not correct, we should
         * export it as a separate AVStream but this needs a few changes
         * in the MOV demuxer, patch welcome. */

        FUNC2(c->fc, AV_LOG_WARNING, "multiple fourcc not supported\n");
        FUNC3(pb, size);
        return 1;
    }

    return 0;
}