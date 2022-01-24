#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct MpvParseContext {int /*<<< orphan*/  pc; } ;
struct TYPE_9__ {int /*<<< orphan*/  framerate; } ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  repeat_pict; int /*<<< orphan*/  pict_type; struct MpvParseContext* priv_data; } ;
typedef  int /*<<< orphan*/  ParseContext ;
typedef  TYPE_1__ AVCodecParserContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int PARSER_FLAG_COMPLETE_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC5(AVCodecParserContext *s,
                           AVCodecContext *avctx,
                           const uint8_t **poutbuf, int *poutbuf_size,
                           const uint8_t *buf, int buf_size)
{
    struct MpvParseContext *pc1 = s->priv_data;
    ParseContext *pc= &pc1->pc;
    int next;

    if(s->flags & PARSER_FLAG_COMPLETE_FRAMES){
        next= buf_size;
    }else{
        next= FUNC3(pc, buf, buf_size, s);

        if (FUNC1(pc, next, &buf, &buf_size) < 0) {
            *poutbuf = NULL;
            *poutbuf_size = 0;
            return buf_size;
        }

    }
    /* we have a full frame : we just parse the first few MPEG headers
       to have the full timing information. The time take by this
       function should be negligible for uncorrupted streams */
    FUNC4(s, avctx, buf, buf_size);
    FUNC2(NULL, "pict_type=%d frame_rate=%0.3f repeat_pict=%d\n",
            s->pict_type, FUNC0(avctx->framerate), s->repeat_pict);

    *poutbuf = buf;
    *poutbuf_size = buf_size;
    return next;
}