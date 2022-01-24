#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_9__ {int* pix_fmts; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {scalar_t__ strict_std_compliance; int /*<<< orphan*/  codec_id; } ;
struct TYPE_7__ {int nb_components; } ;
typedef  int /*<<< orphan*/  AVStream ;
typedef  TYPE_1__ AVPixFmtDescriptor ;
typedef  TYPE_2__ AVCodecContext ;
typedef  TYPE_3__ AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int const AV_PIX_FMT_NONE ; 
 scalar_t__ FF_COMPLIANCE_UNOFFICIAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int) ; 
 int FUNC3 (int,int const,int,int,int /*<<< orphan*/ *) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int const*) ; 

enum AVPixelFormat FUNC5(AVStream *st, AVCodecContext *enc_ctx, AVCodec *codec, enum AVPixelFormat target)
{
    if (codec && codec->pix_fmts) {
        const enum AVPixelFormat *p = codec->pix_fmts;
        const AVPixFmtDescriptor *desc = FUNC2(target);
        //FIXME: This should check for AV_PIX_FMT_FLAG_ALPHA after PAL8 pixel format without alpha is implemented
        int has_alpha = desc ? desc->nb_components % 2 == 0 : 0;
        enum AVPixelFormat best= AV_PIX_FMT_NONE;

        if (enc_ctx->strict_std_compliance <= FF_COMPLIANCE_UNOFFICIAL) {
            p = FUNC4(enc_ctx->codec_id, p);
        }
        for (; *p != AV_PIX_FMT_NONE; p++) {
            best= FUNC3(best, *p, target, has_alpha, NULL);
            if (*p == target)
                break;
        }
        if (*p == AV_PIX_FMT_NONE) {
            if (target != AV_PIX_FMT_NONE)
                FUNC1(NULL, AV_LOG_WARNING,
                       "Incompatible pixel format '%s' for codec '%s', auto-selecting format '%s'\n",
                       FUNC0(target),
                       codec->name,
                       FUNC0(best));
            return best;
        }
    }
    return target;
}