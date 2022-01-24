#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  str; } ;
struct TYPE_16__ {TYPE_1__* priv_data; } ;
struct TYPE_15__ {char* data; scalar_t__ size; } ;
struct TYPE_14__ {scalar_t__ num_rects; } ;
struct TYPE_13__ {int /*<<< orphan*/  readorder; } ;
typedef  TYPE_1__ FFASSDecoderContext ;
typedef  TYPE_2__ AVSubtitle ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVCodecContext ;
typedef  TYPE_5__ AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  JSS_MAX_LINESIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_5__*,char const*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char const*,char) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx,
                                void *data, int *got_sub_ptr, AVPacket *avpkt)
{
    int ret;
    AVSubtitle *sub = data;
    const char *ptr = avpkt->data;
    FFASSDecoderContext *s = avctx->priv_data;

    if (avpkt->size <= 0)
        goto end;

    if (*ptr) {
        AVBPrint buffer;

        // skip timers
        ptr = FUNC4(ptr);
        ptr = FUNC5(ptr, ' '); if (!ptr) goto end; ptr++;
        ptr = FUNC5(ptr, ' '); if (!ptr) goto end; ptr++;

        FUNC1(&buffer, JSS_MAX_LINESIZE, JSS_MAX_LINESIZE);
        FUNC3(avctx, &buffer, ptr);
        ret = FUNC2(sub, buffer.str, s->readorder++, 0, NULL, NULL);
        FUNC0(&buffer, NULL);
        if (ret < 0)
            return ret;
    }

end:
    *got_sub_ptr = sub->num_rects > 0;
    return avpkt->size;
}