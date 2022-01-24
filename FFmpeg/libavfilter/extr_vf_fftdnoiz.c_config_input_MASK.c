#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_3__* priv; } ;
struct TYPE_14__ {int w; int h; int /*<<< orphan*/  format; TYPE_6__* dst; } ;
struct TYPE_13__ {int /*<<< orphan*/  log2_chroma_h; int /*<<< orphan*/  log2_chroma_w; TYPE_1__* comp; } ;
struct TYPE_12__ {int depth; int sigma; int nb_prev; int nb_next; int nb_planes; int block_bits; int overlap; TYPE_2__* planes; int /*<<< orphan*/  export_row; int /*<<< orphan*/  import_row; } ;
struct TYPE_11__ {int planewidth; int planeheight; int b; float n; int o; int nox; int noy; int buffer_linesize; int data_linesize; void* vdata; void* hdata; void** buffer; } ;
struct TYPE_10__ {int depth; } ;
typedef  TYPE_2__ PlaneContext ;
typedef  TYPE_3__ FFTdnoizContext ;
typedef  int /*<<< orphan*/  FFTComplex ;
typedef  TYPE_4__ AVPixFmtDescriptor ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 size_t CURRENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 size_t NEXT ; 
 size_t PREV ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  export_row16 ; 
 int /*<<< orphan*/  export_row8 ; 
 int /*<<< orphan*/  import_row16 ; 
 int /*<<< orphan*/  import_row8 ; 

__attribute__((used)) static int FUNC6(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    const AVPixFmtDescriptor *desc;
    FFTdnoizContext *s = ctx->priv;
    int i;

    desc = FUNC5(inlink->format);
    s->depth = desc->comp[0].depth;

    if (s->depth <= 8) {
        s->import_row = import_row8;
        s->export_row = export_row8;
    } else {
        s->import_row = import_row16;
        s->export_row = export_row16;
        s->sigma *= 1 << (s->depth - 8) * (1 + s->nb_prev + s->nb_next);
    }

    s->planes[1].planewidth = s->planes[2].planewidth = FUNC1(inlink->w, desc->log2_chroma_w);
    s->planes[0].planewidth = s->planes[3].planewidth = inlink->w;
    s->planes[1].planeheight = s->planes[2].planeheight = FUNC1(inlink->h, desc->log2_chroma_h);
    s->planes[0].planeheight = s->planes[3].planeheight = inlink->h;

    s->nb_planes = FUNC4(inlink->format);

    for (i = 0; i < s->nb_planes; i++) {
        PlaneContext *p = &s->planes[i];
        int size;

        p->b = 1 << s->block_bits;
        p->n = 1.f / (p->b * p->b);
        p->o = p->b * s->overlap;
        size = p->b - p->o;
        p->nox = (p->planewidth  + (size - 1)) / size;
        p->noy = (p->planeheight + (size - 1)) / size;

        FUNC3(ctx, AV_LOG_DEBUG, "nox:%d noy:%d size:%d\n", p->nox, p->noy, size);

        p->buffer_linesize = p->b * p->nox * sizeof(FFTComplex);
        p->buffer[CURRENT] = FUNC2(p->b * p->noy, p->buffer_linesize);
        if (!p->buffer[CURRENT])
            return FUNC0(ENOMEM);
        if (s->nb_prev > 0) {
            p->buffer[PREV] = FUNC2(p->b * p->noy, p->buffer_linesize);
            if (!p->buffer[PREV])
                return FUNC0(ENOMEM);
        }
        if (s->nb_next > 0) {
            p->buffer[NEXT] = FUNC2(p->b * p->noy, p->buffer_linesize);
            if (!p->buffer[NEXT])
                return FUNC0(ENOMEM);
        }
        p->data_linesize = 2 * p->b * sizeof(float);
        p->hdata = FUNC2(p->b, p->data_linesize);
        p->vdata = FUNC2(p->b, p->data_linesize);
        if (!p->hdata || !p->vdata)
            return FUNC0(ENOMEM);
    }

    return 0;
}