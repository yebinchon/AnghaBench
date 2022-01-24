#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum FLACExtradataFormat { ____Placeholder_FLACExtradataFormat } FLACExtradataFormat ;
struct TYPE_4__ {scalar_t__ extradata_size; int /*<<< orphan*/ * extradata; } ;
typedef  TYPE_1__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FLAC_EXTRADATA_FORMAT_FULL_HEADER ; 
 int FLAC_EXTRADATA_FORMAT_STREAMINFO ; 
 scalar_t__ FLAC_STREAMINFO_SIZE ; 
 scalar_t__ FUNC1 (float,char,char,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 

int FUNC3(AVCodecContext *avctx,
                               enum FLACExtradataFormat *format,
                               uint8_t **streaminfo_start)
{
    if (!avctx->extradata || avctx->extradata_size < FLAC_STREAMINFO_SIZE) {
        FUNC2(avctx, AV_LOG_ERROR, "extradata NULL or too small.\n");
        return 0;
    }
    if (FUNC0(avctx->extradata) != FUNC1('f','L','a','C')) {
        /* extradata contains STREAMINFO only */
        if (avctx->extradata_size != FLAC_STREAMINFO_SIZE) {
            FUNC2(avctx, AV_LOG_WARNING, "extradata contains %d bytes too many.\n",
                   FLAC_STREAMINFO_SIZE-avctx->extradata_size);
        }
        *format = FLAC_EXTRADATA_FORMAT_STREAMINFO;
        *streaminfo_start = avctx->extradata;
    } else {
        if (avctx->extradata_size < 8+FLAC_STREAMINFO_SIZE) {
            FUNC2(avctx, AV_LOG_ERROR, "extradata too small.\n");
            return 0;
        }
        *format = FLAC_EXTRADATA_FORMAT_FULL_HEADER;
        *streaminfo_start = &avctx->extradata[8];
    }
    return 1;
}