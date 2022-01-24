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
typedef  char uint8_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_15__ {int* pix_fmts; } ;
struct TYPE_14__ {scalar_t__ pix_fmt; scalar_t__ strict_std_compliance; int /*<<< orphan*/  codec_id; } ;
struct TYPE_13__ {int /*<<< orphan*/  value; } ;
struct TYPE_12__ {TYPE_1__* graph; TYPE_2__* ost; } ;
struct TYPE_11__ {TYPE_5__* enc_ctx; TYPE_6__* enc; int /*<<< orphan*/  st; scalar_t__ keep_pix_fmt; int /*<<< orphan*/  encoder_opts; } ;
struct TYPE_10__ {int /*<<< orphan*/  graph; } ;
typedef  TYPE_2__ OutputStream ;
typedef  TYPE_3__ OutputFilter ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AVFILTER_AUTO_CONVERT_NONE ; 
 scalar_t__ AV_PIX_FMT_NONE ; 
 scalar_t__ FF_COMPLIANCE_UNOFFICIAL ; 
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const*) ; 
 int const FUNC8 (int /*<<< orphan*/ ,TYPE_5__*,TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int* FUNC10 (int /*<<< orphan*/ ,int const*) ; 

__attribute__((used)) static char *FUNC11(OutputFilter *ofilter)
{
    OutputStream *ost = ofilter->ost;
    AVDictionaryEntry *strict_dict = FUNC0(ost->encoder_opts, "strict", NULL, 0);
    if (strict_dict)
        // used by choose_pixel_fmt() and below
        FUNC2(ost->enc_ctx, "strict", strict_dict->value, 0);

     if (ost->keep_pix_fmt) {
        FUNC4(ofilter->graph->graph,
                                            AVFILTER_AUTO_CONVERT_NONE);
        if (ost->enc_ctx->pix_fmt == AV_PIX_FMT_NONE)
            return NULL;
        return FUNC3(FUNC1(ost->enc_ctx->pix_fmt));
    }
    if (ost->enc_ctx->pix_fmt != AV_PIX_FMT_NONE) {
        return FUNC3(FUNC1(FUNC8(ost->st, ost->enc_ctx, ost->enc, ost->enc_ctx->pix_fmt)));
    } else if (ost->enc && ost->enc->pix_fmts) {
        const enum AVPixelFormat *p;
        AVIOContext *s = NULL;
        uint8_t *ret;
        int len;

        if (FUNC6(&s) < 0)
            FUNC9(1);

        p = ost->enc->pix_fmts;
        if (ost->enc_ctx->strict_std_compliance <= FF_COMPLIANCE_UNOFFICIAL) {
            p = FUNC10(ost->enc_ctx->codec_id, p);
        }

        for (; *p != AV_PIX_FMT_NONE; p++) {
            const char *name = FUNC1(*p);
            FUNC7(s, "%s|", name);
        }
        len = FUNC5(s, &ret);
        ret[len - 1] = 0;
        return ret;
    } else
        return NULL;
}