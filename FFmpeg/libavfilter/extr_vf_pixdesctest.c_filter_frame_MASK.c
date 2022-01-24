#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_20__ {int w; int h; TYPE_1__* dst; } ;
struct TYPE_19__ {int const* linesize; int /*<<< orphan*/ ** data; } ;
struct TYPE_18__ {TYPE_11__* pix_desc; int /*<<< orphan*/  line; } ;
struct TYPE_17__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
struct TYPE_16__ {int flags; int nb_components; int /*<<< orphan*/  log2_chroma_h; int /*<<< orphan*/  log2_chroma_w; } ;
typedef  TYPE_2__ PixdescTestContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVPALETTE_SIZE ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int AV_PIX_FMT_FLAG_PAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int const FUNC2 (int const) ; 
 int FF_PSEUDOPAL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int const*,TYPE_11__*,int /*<<< orphan*/ ,int,int,int const,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int const*,TYPE_11__*,int /*<<< orphan*/ ,int,int,int const,int) ; 
 int FUNC7 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC8 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static int FUNC11(AVFilterLink *inlink, AVFrame *in)
{
    PixdescTestContext *priv = inlink->dst->priv;
    AVFilterLink *outlink    = inlink->dst->outputs[0];
    AVFrame *out;
    int i, c, w = inlink->w, h = inlink->h;
    const int cw = FUNC1(w, priv->pix_desc->log2_chroma_w);
    const int ch = FUNC1(h, priv->pix_desc->log2_chroma_h);

    out = FUNC8(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC4(&in);
        return FUNC0(ENOMEM);
    }

    FUNC3(out, in);

    for (i = 0; i < 4; i++) {
        const int h1 = i == 1 || i == 2 ? ch : h;
        if (out->data[i]) {
            uint8_t *data = out->data[i] +
                (out->linesize[i] > 0 ? 0 : out->linesize[i] * (h1-1));
            FUNC10(data, 0, FUNC2(out->linesize[i]) * h1);
        }
    }

    /* copy palette */
    if (priv->pix_desc->flags & AV_PIX_FMT_FLAG_PAL ||
        ((priv->pix_desc->flags & FF_PSEUDOPAL) && out->data[1] && in->data[1]))
        FUNC9(out->data[1], in->data[1], AVPALETTE_SIZE);

    for (c = 0; c < priv->pix_desc->nb_components; c++) {
        const int w1 = c == 1 || c == 2 ? cw : w;
        const int h1 = c == 1 || c == 2 ? ch : h;

        for (i = 0; i < h1; i++) {
            FUNC5(priv->line,
                               (void*)in->data,
                               in->linesize,
                               priv->pix_desc,
                               0, i, c, w1, 0, 4);

            FUNC6(priv->line,
                                out->data,
                                out->linesize,
                                priv->pix_desc,
                                0, i, c, w1, 4);
        }
    }

    FUNC4(&in);
    return FUNC7(outlink, out);
}