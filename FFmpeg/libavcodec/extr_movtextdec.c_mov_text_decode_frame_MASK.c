#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int uint64_t ;
struct TYPE_23__ {int /*<<< orphan*/  str; } ;
struct TYPE_22__ {TYPE_1__* priv_data; } ;
struct TYPE_21__ {char* data; int size; } ;
struct TYPE_20__ {scalar_t__ num_rects; } ;
struct TYPE_19__ {int tracksize; int size_var; int /*<<< orphan*/  readorder; scalar_t__ count_s; scalar_t__ box_flags; scalar_t__ style_entries; } ;
struct TYPE_18__ {int type; int base_size; int (* decode ) (char const*,TYPE_1__*,TYPE_3__*) ;} ;
typedef  TYPE_1__ MovTextContext ;
typedef  TYPE_2__ AVSubtitle ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVCodecContext ;
typedef  TYPE_5__ AVBPrint ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 size_t box_count ; 
 TYPE_14__* box_types ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (char const*,TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char*,char*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC11(AVCodecContext *avctx,
                            void *data, int *got_sub_ptr, AVPacket *avpkt)
{
    AVSubtitle *sub = data;
    MovTextContext *m = avctx->priv_data;
    int ret;
    AVBPrint buf;
    char *ptr = avpkt->data;
    char *end;
    int text_length, tsmb_type, ret_tsmb;
    uint64_t tsmb_size;
    const uint8_t *tsmb;
    size_t i;

    if (!ptr || avpkt->size < 2)
        return AVERROR_INVALIDDATA;

    /*
     * A packet of size two with value zero is an empty subtitle
     * used to mark the end of the previous non-empty subtitle.
     * We can just drop them here as we have duration information
     * already. If the value is non-zero, then it's technically a
     * bad packet.
     */
    if (avpkt->size == 2)
        return FUNC0(ptr) == 0 ? 0 : AVERROR_INVALIDDATA;

    /*
     * The first two bytes of the packet are the length of the text string
     * In complex cases, there are style descriptors appended to the string
     * so we can't just assume the packet size is the string size.
     */
    text_length = FUNC0(ptr);
    end = ptr + FUNC3(2 + text_length, avpkt->size);
    ptr += 2;

    FUNC8(m);

    tsmb_size = 0;
    m->tracksize = 2 + text_length;
    m->style_entries = 0;
    m->box_flags = 0;
    m->count_s = 0;
    // Note that the spec recommends lines be no longer than 2048 characters.
    FUNC5(&buf, 0, AV_BPRINT_SIZE_UNLIMITED);
    if (text_length + 2 != avpkt->size) {
        while (m->tracksize + 8 <= avpkt->size) {
            // A box is a minimum of 8 bytes.
            tsmb = ptr + m->tracksize - 2;
            tsmb_size = FUNC1(tsmb);
            tsmb += 4;
            tsmb_type = FUNC1(tsmb);
            tsmb += 4;

            if (tsmb_size == 1) {
                if (m->tracksize + 16 > avpkt->size)
                    break;
                tsmb_size = FUNC2(tsmb);
                tsmb += 8;
                m->size_var = 16;
            } else
                m->size_var = 8;
            //size_var is equal to 8 or 16 depending on the size of box

            if (tsmb_size == 0) {
                FUNC6(avctx, AV_LOG_ERROR, "tsmb_size is 0\n");
                return AVERROR_INVALIDDATA;
            }

            if (tsmb_size > avpkt->size - m->tracksize)
                break;

            for (i = 0; i < box_count; i++) {
                if (tsmb_type == box_types[i].type) {
                    if (m->tracksize + m->size_var + box_types[i].base_size > avpkt->size)
                        break;
                    ret_tsmb = box_types[i].decode(tsmb, m, avpkt);
                    if (ret_tsmb == -1)
                        break;
                }
            }
            m->tracksize = m->tracksize + tsmb_size;
        }
        FUNC10(&buf, ptr, end, avctx);
        FUNC8(m);
    } else
        FUNC10(&buf, ptr, end, avctx);

    ret = FUNC7(sub, buf.str, m->readorder++, 0, NULL, NULL);
    FUNC4(&buf, NULL);
    if (ret < 0)
        return ret;
    *got_sub_ptr = sub->num_rects > 0;
    return avpkt->size;
}