#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ frame_ct_out; int /*<<< orphan*/ * session; } ;
typedef  TYPE_2__ VTEncContext ;
struct TYPE_8__ {int /*<<< orphan*/  den; } ;
struct TYPE_10__ {scalar_t__ extradata_size; scalar_t__ extradata; TYPE_1__ time_base; TYPE_2__* priv_data; } ;
typedef  int /*<<< orphan*/ * CVPixelBufferRef ;
typedef  int /*<<< orphan*/ * CVPixelBufferPoolRef ;
typedef  int /*<<< orphan*/  CMVideoCodecType ;
typedef  int /*<<< orphan*/  CMTime ;
typedef  int /*<<< orphan*/ * CMSampleBufferRef ;
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  int /*<<< orphan*/  CFNumberRef ;
typedef  int /*<<< orphan*/  CFDictionaryRef ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  kCMTimeIndefinite ; 
 int /*<<< orphan*/  kCMTimeInvalid ; 
 int kCVReturnSuccess ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(AVCodecContext   *avctx,
                                    CMVideoCodecType codec_type,
                                    CFStringRef      profile_level,
                                    CFNumberRef      gamma_level,
                                    CFDictionaryRef  enc_info,
                                    CFDictionaryRef  pixel_buffer_info)
{
    VTEncContext *vtctx = avctx->priv_data;
    int status;
    CVPixelBufferPoolRef pool = NULL;
    CVPixelBufferRef pix_buf = NULL;
    CMTime time;
    CMSampleBufferRef buf = NULL;

    status = FUNC8(avctx,
                                  codec_type,
                                  profile_level,
                                  gamma_level,
                                  enc_info,
                                  pixel_buffer_info,
                                  &vtctx->session);
    if (status)
        goto pe_cleanup;

    pool = FUNC5(vtctx->session);
    if(!pool){
        FUNC7(avctx, AV_LOG_ERROR, "Error getting pixel buffer pool.\n");
        goto pe_cleanup;
    }

    status = FUNC2(NULL,
                                                pool,
                                                &pix_buf);

    if(status != kCVReturnSuccess){
        FUNC7(avctx, AV_LOG_ERROR, "Error creating frame from pool: %d\n", status);
        goto pe_cleanup;
    }

    time = FUNC1(0, avctx->time_base.den);
    status = FUNC4(vtctx->session,
                                             pix_buf,
                                             time,
                                             kCMTimeInvalid,
                                             NULL,
                                             NULL,
                                             NULL);

    if (status) {
        FUNC7(avctx,
               AV_LOG_ERROR,
               "Error sending frame for extradata: %d\n",
               status);

        goto pe_cleanup;
    }

    //Populates extradata - output frames are flushed and param sets are available.
    status = FUNC3(vtctx->session,
                                                kCMTimeIndefinite);

    if (status)
        goto pe_cleanup;

    status = FUNC9(vtctx, 0, &buf, NULL);
    if (status) {
        FUNC7(avctx, AV_LOG_ERROR, "popping: %d\n", status);
        goto pe_cleanup;
    }

    FUNC0(buf);



pe_cleanup:
    if(vtctx->session)
        FUNC0(vtctx->session);

    vtctx->session = NULL;
    vtctx->frame_ct_out = 0;

    FUNC6(status != 0 || (avctx->extradata && avctx->extradata_size > 0));

    return status;
}