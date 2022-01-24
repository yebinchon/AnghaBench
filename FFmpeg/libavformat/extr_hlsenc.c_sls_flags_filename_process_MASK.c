#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct AVFormatContext {int dummy; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_7__ {TYPE_5__* avf; int /*<<< orphan*/  current_segment_final_filename_fmt; } ;
typedef  TYPE_1__ VariantStream ;
struct TYPE_9__ {int /*<<< orphan*/  url; } ;
struct TYPE_8__ {int flags; } ;
typedef  int /*<<< orphan*/  HLSSegment ;
typedef  TYPE_2__ HLSContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 double HLS_MICROSECOND_UNIT ; 
 int HLS_SECOND_LEVEL_SEGMENT_DURATION ; 
 int HLS_SECOND_LEVEL_SEGMENT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char*) ; 
 int FUNC5 (char**,int /*<<< orphan*/ ,char,scalar_t__) ; 
 scalar_t__ FUNC6 (double) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct AVFormatContext *s, HLSContext *hls,
                                      VariantStream *vs, HLSSegment *en,
                                      double duration, int64_t pos, int64_t size)
{
    if ((hls->flags & (HLS_SECOND_LEVEL_SEGMENT_SIZE | HLS_SECOND_LEVEL_SEGMENT_DURATION)) &&
        FUNC7(vs->current_segment_final_filename_fmt)) {
        char * new_url = FUNC3(vs->current_segment_final_filename_fmt);
        if (!new_url) {
            return FUNC0(ENOMEM);
        }
        FUNC4(vs->avf, new_url);
        if (hls->flags & HLS_SECOND_LEVEL_SEGMENT_SIZE) {
            char *filename = NULL;
            if (FUNC5(&filename, vs->avf->url, 's', pos + size) < 1) {
                FUNC2(hls, AV_LOG_ERROR,
                       "Invalid second level segment filename template '%s', "
                       "you can try to remove second_level_segment_size flag\n",
                       vs->avf->url);
                FUNC1(&filename);
                return FUNC0(EINVAL);
            }
            FUNC4(vs->avf, filename);
        }
        if (hls->flags & HLS_SECOND_LEVEL_SEGMENT_DURATION) {
            char *filename = NULL;
            if (FUNC5(&filename, vs->avf->url,
                                             't',  (int64_t)FUNC6(duration * HLS_MICROSECOND_UNIT)) < 1) {
                FUNC2(hls, AV_LOG_ERROR,
                       "Invalid second level segment filename template '%s', "
                       "you can try to remove second_level_segment_time flag\n",
                       vs->avf->url);
                FUNC1(&filename);
                return FUNC0(EINVAL);
            }
            FUNC4(vs->avf, filename);
        }
    }
    return 0;
}