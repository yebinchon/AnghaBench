#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  signature ;
struct TYPE_13__ {scalar_t__ seekable; } ;
struct TYPE_12__ {int /*<<< orphan*/  ctx_flags; TYPE_3__* pb; TYPE_1__* priv_data; } ;
struct TYPE_11__ {int last_good_pos; int video_stream_index; int audio_stream_index; } ;
typedef  TYPE_1__ DHAVContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVFMTCTX_NOHEADER ; 
 int FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 void* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s)
{
    DHAVContext *dhav = s->priv_data;
    uint8_t signature[5];

    FUNC7(s->pb, 5);
    FUNC1(s->pb, signature, sizeof(signature));
    if (!FUNC8(signature, "DAHUA", 5)) {
        FUNC5(s->pb, 0x400 - 5);
        dhav->last_good_pos = FUNC6(s->pb);
    } else {
        if (!FUNC8(signature, "DHAV", 4)) {
            FUNC3(s->pb, -5, SEEK_CUR);
            dhav->last_good_pos = FUNC6(s->pb);
        } else if (s->pb->seekable) {
            FUNC3(s->pb, FUNC4(s->pb) - 8, SEEK_SET);
            while (FUNC2(s->pb) == FUNC0('d','h','a','v')) {
                int seek_back;

                seek_back = FUNC2(s->pb) + 8;
                dhav->last_good_pos = FUNC6(s->pb);
                if (dhav->last_good_pos < seek_back)
                    break;
                FUNC3(s->pb, -seek_back, SEEK_CUR);
            }
        }
    }

    s->ctx_flags |= AVFMTCTX_NOHEADER;
    dhav->video_stream_index = -1;
    dhav->audio_stream_index = -1;

    return 0;
}