#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  tmp_frame; } ;
typedef  TYPE_1__ VTContext ;
struct TYPE_16__ {TYPE_2__* opaque; } ;
struct TYPE_15__ {int /*<<< orphan*/  cv_pix_fmt_type; } ;
struct TYPE_14__ {scalar_t__ hwaccel_id; int /*<<< orphan*/  hwaccel_retrieve_data; int /*<<< orphan*/  (* hwaccel_uninit ) (TYPE_4__*) ;TYPE_1__* hwaccel_ctx; } ;
typedef  TYPE_2__ InputStream ;
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  TYPE_3__ AVVideotoolboxContext ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_LOG_ERROR ; 
 int AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ HWACCEL_AUTO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int,char*,...) ; 
 TYPE_1__* FUNC6 (int) ; 
 TYPE_3__* FUNC7 () ; 
 int FUNC8 (TYPE_4__*) ; 
 int FUNC9 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFStringEncodingUTF8 ; 
 int /*<<< orphan*/  videotoolbox_pixfmt ; 
 int /*<<< orphan*/  videotoolbox_retrieve_data ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 

int FUNC11(AVCodecContext *s)
{
    InputStream *ist = s->opaque;
    int loglevel = (ist->hwaccel_id == HWACCEL_AUTO) ? AV_LOG_VERBOSE : AV_LOG_ERROR;
    int ret = 0;
    VTContext *vt;

    vt = FUNC6(sizeof(*vt));
    if (!vt)
        return FUNC0(ENOMEM);

    ist->hwaccel_ctx           = vt;
    ist->hwaccel_uninit        = videotoolbox_uninit;
    ist->hwaccel_retrieve_data = videotoolbox_retrieve_data;

    vt->tmp_frame = FUNC4();
    if (!vt->tmp_frame) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    // TODO: reindent
        if (!videotoolbox_pixfmt) {
            ret = FUNC8(s);
        } else {
            AVVideotoolboxContext *vtctx = FUNC7();
            CFStringRef pixfmt_str = FUNC2(kCFAllocatorDefault,
                                                               videotoolbox_pixfmt,
                                                               kCFStringEncodingUTF8);
#if HAVE_UTGETOSTYPEFROMSTRING
            vtctx->cv_pix_fmt_type = UTGetOSTypeFromString(pixfmt_str);
#else
            FUNC5(s, loglevel, "UTGetOSTypeFromString() is not available "
                   "on this platform, %s pixel format can not be honored from "
                   "the command line\n", videotoolbox_pixfmt);
#endif
            ret = FUNC9(s, vtctx);
            FUNC1(pixfmt_str);
        }
    if (ret < 0) {
        FUNC5(NULL, loglevel, "Error creating Videotoolbox decoder.\n");
        goto fail;
    }

    return 0;
fail:
    FUNC10(s);
    return ret;
}