#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct SwsContext {int srcRange; int dstRange; int brightness; int contrast; int saturation; int const* srcColorspaceTable; int const* dstColorspaceTable; int srcBpc; size_t cascaded_mainindex; int srcW; int srcH; int dstW; int dstH; int /*<<< orphan*/  dstFormat; struct SwsContext** cascaded_context; int /*<<< orphan*/  param; int /*<<< orphan*/  flags; int /*<<< orphan*/  alphablend; int /*<<< orphan*/  srcFormat; int /*<<< orphan*/  cascaded_tmpStride; int /*<<< orphan*/  cascaded_tmp; void* srcFormatBpp; void* dstFormatBpp; } ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef  int /*<<< orphan*/  AVPixFmtDescriptor ;

/* Variables and functions */
 scalar_t__ ARCH_PPC ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int AV_PIX_FMT_BGR24 ; 
 int AV_PIX_FMT_BGR48 ; 
 int AV_PIX_FMT_BGRA ; 
 int AV_PIX_FMT_BGRA64 ; 
 void* FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct SwsContext*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct SwsContext*) ; 
 int /*<<< orphan*/  FUNC5 (struct SwsContext*,int const*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct SwsContext*,int const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct SwsContext*,int const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct SwsContext*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC15 (int const*,int const*,int) ; 
 struct SwsContext* FUNC16 (int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct SwsContext* FUNC17 (int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct SwsContext*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC19(struct SwsContext *c, const int inv_table[4],
                             int srcRange, const int table[4], int dstRange,
                             int brightness, int contrast, int saturation)
{
    const AVPixFmtDescriptor *desc_dst;
    const AVPixFmtDescriptor *desc_src;
    int need_reinit = 0;

    FUNC8(c);
    desc_dst = FUNC3(c->dstFormat);
    desc_src = FUNC3(c->srcFormat);

    if(!FUNC13(c->dstFormat) && !FUNC11(c->dstFormat))
        dstRange = 0;
    if(!FUNC13(c->srcFormat) && !FUNC11(c->srcFormat))
        srcRange = 0;

    if (c->srcRange != srcRange ||
        c->dstRange != dstRange ||
        c->brightness != brightness ||
        c->contrast   != contrast ||
        c->saturation != saturation ||
        FUNC14(c->srcColorspaceTable, inv_table, sizeof(int) * 4) ||
        FUNC14(c->dstColorspaceTable,     table, sizeof(int) * 4)
    )
        need_reinit = 1;

    FUNC15(c->srcColorspaceTable, inv_table, sizeof(int) * 4);
    FUNC15(c->dstColorspaceTable, table, sizeof(int) * 4);



    c->brightness = brightness;
    c->contrast   = contrast;
    c->saturation = saturation;
    c->srcRange   = srcRange;
    c->dstRange   = dstRange;

    //The srcBpc check is possibly wrong but we seem to lack a definitive reference to test this
    //and what we have in ticket 2939 looks better with this check
    if (need_reinit && (c->srcBpc == 8 || !FUNC13(c->srcFormat)))
        FUNC4(c);

    c->dstFormatBpp = FUNC0(desc_dst);
    c->srcFormatBpp = FUNC0(desc_src);

    if (c->cascaded_context[c->cascaded_mainindex])
        return FUNC19(c->cascaded_context[c->cascaded_mainindex],inv_table, srcRange,table, dstRange, brightness,  contrast, saturation);

    if (!need_reinit)
        return 0;

    if ((FUNC13(c->dstFormat) || FUNC11(c->dstFormat)) && (FUNC13(c->srcFormat) || FUNC11(c->srcFormat))) {
        if (!c->cascaded_context[0] &&
            FUNC14(c->dstColorspaceTable, c->srcColorspaceTable, sizeof(int) * 4) &&
            c->srcW && c->srcH && c->dstW && c->dstH) {
            enum AVPixelFormat tmp_format;
            int tmp_width, tmp_height;
            int srcW = c->srcW;
            int srcH = c->srcH;
            int dstW = c->dstW;
            int dstH = c->dstH;
            int ret;
            FUNC2(c, AV_LOG_VERBOSE, "YUV color matrix differs for YUV->YUV, using intermediate RGB to convert\n");

            if (FUNC12(c->dstFormat) || FUNC9(c->dstFormat)) {
                if (FUNC10(c->srcFormat) && FUNC10(c->dstFormat)) {
                    tmp_format = AV_PIX_FMT_BGRA64;
                } else {
                    tmp_format = AV_PIX_FMT_BGR48;
                }
            } else {
                if (FUNC10(c->srcFormat) && FUNC10(c->dstFormat)) {
                    tmp_format = AV_PIX_FMT_BGRA;
                } else {
                    tmp_format = AV_PIX_FMT_BGR24;
                }
            }

            if (srcW*srcH > dstW*dstH) {
                tmp_width  = dstW;
                tmp_height = dstH;
            } else {
                tmp_width  = srcW;
                tmp_height = srcH;
            }

            ret = FUNC1(c->cascaded_tmp, c->cascaded_tmpStride,
                                tmp_width, tmp_height, tmp_format, 64);
            if (ret < 0)
                return ret;

            c->cascaded_context[0] = FUNC16(srcW, srcH, c->srcFormat,
                                                        tmp_width, tmp_height, tmp_format,
                                                        c->flags, c->param);
            if (!c->cascaded_context[0])
                return -1;

            c->cascaded_context[0]->alphablend = c->alphablend;
            ret = FUNC18(c->cascaded_context[0], NULL , NULL);
            if (ret < 0)
                return ret;
            //we set both src and dst depending on that the RGB side will be ignored
            FUNC19(c->cascaded_context[0], inv_table,
                                     srcRange, table, dstRange,
                                     brightness, contrast, saturation);

            c->cascaded_context[1] = FUNC17(tmp_width, tmp_height, tmp_format,
                                                    dstW, dstH, c->dstFormat,
                                                    c->flags, NULL, NULL, c->param);
            if (!c->cascaded_context[1])
                return -1;
            FUNC19(c->cascaded_context[1], inv_table,
                                     srcRange, table, dstRange,
                                     0, 1 << 16, 1 << 16);
            return 0;
        }
        return -1;
    }

    if (!FUNC13(c->dstFormat) && !FUNC11(c->dstFormat)) {
        FUNC5(c, inv_table, srcRange, brightness,
                                 contrast, saturation);
        // FIXME factorize

        if (ARCH_PPC)
            FUNC6(c, inv_table, brightness,
                                       contrast, saturation);
    }

    FUNC7(c, table, dstRange);

    return 0;
}