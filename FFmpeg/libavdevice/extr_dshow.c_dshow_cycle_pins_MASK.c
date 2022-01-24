#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  majortype; } ;
typedef  TYPE_1__ wchar_t ;
struct dshow_ctx {scalar_t__ pixel_format; scalar_t__ video_codec_id; int show_video_device_dialog; int show_audio_device_dialog; char* video_pin_name; char* audio_pin_name; char const* audio_buffer_size; scalar_t__ sample_rate; scalar_t__ channels; scalar_t__ requested_height; scalar_t__ requested_width; scalar_t__ framerate; } ;
typedef  enum dshowSourceFilterType { ____Placeholder_dshowSourceFilterType } dshowSourceFilterType ;
typedef  enum dshowDeviceType { ____Placeholder_dshowDeviceType } dshowDeviceType ;
struct TYPE_17__ {struct dshow_ctx* priv_data; } ;
struct TYPE_16__ {scalar_t__ dir; TYPE_1__* achName; int /*<<< orphan*/  pFilter; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ PIN_INFO ;
typedef  int /*<<< orphan*/  IPin ;
typedef  int /*<<< orphan*/  IKsPropertySet ;
typedef  int /*<<< orphan*/  IEnumPins ;
typedef  int /*<<< orphan*/  IEnumMediaTypes ;
typedef  int /*<<< orphan*/  IBaseFilter ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_1__ AM_MEDIA_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  AMPROPERTY_PIN_CATEGORY ; 
 int /*<<< orphan*/  AMPROPSETID_Pin ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_CODEC_ID_RAWVIDEO ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 scalar_t__ AV_PIX_FMT_NONE ; 
 int AudioDevice ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IKsPropertySet ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const MEDIATYPE_Audio ; 
 int /*<<< orphan*/  const MEDIATYPE_Video ; 
 scalar_t__ PINDIR_OUTPUT ; 
 int /*<<< orphan*/  const PIN_CATEGORY_CAPTURE ; 
 int S_OK ; 
 int VideoDevice ; 
 int VideoSourceDevice ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC20 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 char* FUNC22 (TYPE_1__*) ; 
 scalar_t__ FUNC23 (char*,char*) ; 

__attribute__((used)) static int
FUNC24(AVFormatContext *avctx, enum dshowDeviceType devtype,
                 enum dshowSourceFilterType sourcetype, IBaseFilter *device_filter, IPin **ppin)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    IEnumPins *pins = 0;
    IPin *device_pin = NULL;
    IPin *pin;
    int r;

    const GUID *mediatype[2] = { &MEDIATYPE_Video, &MEDIATYPE_Audio };
    const char *devtypename = (devtype == VideoDevice) ? "video" : "audio only";
    const char *sourcetypename = (sourcetype == VideoSourceDevice) ? "video" : "audio";

    int set_format = (devtype == VideoDevice && (ctx->framerate ||
                                                (ctx->requested_width && ctx->requested_height) ||
                                                 ctx->pixel_format != AV_PIX_FMT_NONE ||
                                                 ctx->video_codec_id != AV_CODEC_ID_RAWVIDEO))
                  || (devtype == AudioDevice && (ctx->channels || ctx->sample_rate));
    int format_set = 0;
    int should_show_properties = (devtype == VideoDevice) ? ctx->show_video_device_dialog : ctx->show_audio_device_dialog;

    if (should_show_properties)
        FUNC21(device_filter, avctx);

    r = FUNC2(device_filter, &pins);
    if (r != S_OK) {
        FUNC18(avctx, AV_LOG_ERROR, "Could not enumerate pins.\n");
        return FUNC0(EIO);
    }

    if (!ppin) {
        FUNC18(avctx, AV_LOG_INFO, "DirectShow %s device options (from %s devices)\n",
               devtypename, sourcetypename);
    }

    while (!device_pin && FUNC7(pins, 1, &pin, NULL) == S_OK) {
        IKsPropertySet *p = NULL;
        IEnumMediaTypes *types = NULL;
        PIN_INFO info = {0};
        AM_MEDIA_TYPE *type;
        GUID category;
        DWORD r2;
        char *name_buf = NULL;
        wchar_t *pin_id = NULL;
        char *pin_buf = NULL;
        char *desired_pin_name = devtype == VideoDevice ? ctx->video_pin_name : ctx->audio_pin_name;

        FUNC14(pin, &info);
        FUNC3(info.pFilter);

        if (info.dir != PINDIR_OUTPUT)
            goto next;
        if (FUNC13(pin, &IID_IKsPropertySet, (void **) &p) != S_OK)
            goto next;
        if (FUNC9(p, &AMPROPSETID_Pin, AMPROPERTY_PIN_CATEGORY,
                               NULL, 0, &category, sizeof(GUID), &r2) != S_OK)
            goto next;
        if (!FUNC16(&category, &PIN_CATEGORY_CAPTURE))
            goto next;
        name_buf = FUNC22(info.achName);

        r = FUNC12(pin, &pin_id);
        if (r != S_OK) {
            FUNC18(avctx, AV_LOG_ERROR, "Could not query pin id\n");
            return FUNC0(EIO);
        }
        pin_buf = FUNC22(pin_id);

        if (!ppin) {
            FUNC18(avctx, AV_LOG_INFO, " Pin \"%s\" (alternative pin name \"%s\")\n", name_buf, pin_buf);
            FUNC19(avctx, devtype, pin, NULL);
            goto next;
        }

        if (desired_pin_name) {
            if(FUNC23(name_buf, desired_pin_name) && FUNC23(pin_buf, desired_pin_name)) {
                FUNC18(avctx, AV_LOG_DEBUG, "skipping pin \"%s\" (\"%s\") != requested \"%s\"\n",
                    name_buf, pin_buf, desired_pin_name);
                goto next;
            }
        }

        if (set_format) {
            FUNC19(avctx, devtype, pin, &format_set);
            if (!format_set) {
                goto next;
            }
        }
        if (devtype == AudioDevice && ctx->audio_buffer_size) {
            if (FUNC20(avctx, pin) < 0) {
                FUNC18(avctx, AV_LOG_ERROR, "unable to set audio buffer size %d to pin, using pin anyway...", ctx->audio_buffer_size);
            }
        }

        if (FUNC11(pin, &types) != S_OK)
            goto next;

        FUNC6(types);
        /* in case format_set was not called, just verify the majortype */
        while (!device_pin && FUNC4(types, 1, &type, NULL) == S_OK) {
            if (FUNC16(&type->majortype, mediatype[devtype])) {
                device_pin = pin;
                FUNC18(avctx, AV_LOG_DEBUG, "Selecting pin %s on %s\n", name_buf, devtypename);
                goto next;
            }
            FUNC1(type);
        }

next:
        if (types)
            FUNC5(types);
        if (p)
            FUNC10(p);
        if (device_pin != pin)
            FUNC15(pin);
        FUNC17(name_buf);
        FUNC17(pin_buf);
        if (pin_id)
            FUNC1(pin_id);
    }

    FUNC8(pins);

    if (ppin) {
        if (set_format && !format_set) {
            FUNC18(avctx, AV_LOG_ERROR, "Could not set %s options\n", devtypename);
            return FUNC0(EIO);
        }
        if (!device_pin) {
            FUNC18(avctx, AV_LOG_ERROR,
                "Could not find output pin from %s capture device.\n", devtypename);
            return FUNC0(EIO);
        }
        *ppin = device_pin;
    }

    return 0;
}