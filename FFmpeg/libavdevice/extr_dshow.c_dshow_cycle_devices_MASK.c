#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dshow_ctx {char** device_name; int video_device_number; int audio_device_number; } ;
typedef  enum dshowSourceFilterType { ____Placeholder_dshowSourceFilterType } dshowSourceFilterType ;
typedef  enum dshowDeviceType { ____Placeholder_dshowDeviceType } dshowDeviceType ;
struct TYPE_6__ {int /*<<< orphan*/ * bstrVal; int /*<<< orphan*/  vt; } ;
typedef  TYPE_1__ VARIANT ;
struct TYPE_7__ {struct dshow_ctx* priv_data; } ;
typedef  int /*<<< orphan*/ * LPOLESTR ;
typedef  int /*<<< orphan*/ * LPMALLOC ;
typedef  int /*<<< orphan*/  IPropertyBag ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IEnumMoniker ;
typedef  int /*<<< orphan*/  ICreateDevEnum ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  IBaseFilter ;
typedef  int /*<<< orphan*/  GUID ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  const CLSID_AudioInputDeviceCategory ; 
 int /*<<< orphan*/  const CLSID_VideoInputDeviceCategory ; 
 int FUNC1 (int,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IBaseFilter ; 
 int /*<<< orphan*/  IID_IPropertyBag ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,char*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  VT_BSTR ; 
 int VideoDevice ; 
 int VideoSourceDevice ; 
 int /*<<< orphan*/  FUNC14 (char**) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,char*,char const*,...) ; 
 char* FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (char const*,char*) ; 
 int FUNC18 (char*) ; 

__attribute__((used)) static int
FUNC19(AVFormatContext *avctx, ICreateDevEnum *devenum,
                    enum dshowDeviceType devtype, enum dshowSourceFilterType sourcetype,
                    IBaseFilter **pfilter, char **device_unique_name)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    IBaseFilter *device_filter = NULL;
    IEnumMoniker *classenum = NULL;
    IMoniker *m = NULL;
    const char *device_name = ctx->device_name[devtype];
    int skip = (devtype == VideoDevice) ? ctx->video_device_number
                                        : ctx->audio_device_number;
    int r;

    const GUID *device_guid[2] = { &CLSID_VideoInputDeviceCategory,
                                   &CLSID_AudioInputDeviceCategory };
    const char *devtypename = (devtype == VideoDevice) ? "video" : "audio only";
    const char *sourcetypename = (sourcetype == VideoSourceDevice) ? "video" : "audio";

    r = FUNC4(devenum, device_guid[sourcetype],
                                             (IEnumMoniker **) &classenum, 0);
    if (r != S_OK) {
        FUNC15(avctx, AV_LOG_ERROR, "Could not enumerate %s devices (or none found).\n",
               devtypename);
        return FUNC0(EIO);
    }

    while (!device_filter && FUNC5(classenum, 1, &m, NULL) == S_OK) {
        IPropertyBag *bag = NULL;
        char *friendly_name = NULL;
        char *unique_name = NULL;
        VARIANT var;
        IBindCtx *bind_ctx = NULL;
        LPOLESTR olestr = NULL;
        LPMALLOC co_malloc = NULL;
        int i;

        r = FUNC1(1, &co_malloc);
        if (r != S_OK)
            goto fail1;
        r = FUNC2(0, &bind_ctx);
        if (r != S_OK)
            goto fail1;
        /* GetDisplayname works for both video and audio, DevicePath doesn't */
        r = FUNC10(m, bind_ctx, NULL, &olestr);
        if (r != S_OK)
            goto fail1;
        unique_name = FUNC16(olestr);
        /* replace ':' with '_' since we use : to delineate between sources */
        for (i = 0; i < FUNC18(unique_name); i++) {
            if (unique_name[i] == ':')
                unique_name[i] = '_';
        }

        r = FUNC9(m, 0, 0, &IID_IPropertyBag, (void *) &bag);
        if (r != S_OK)
            goto fail1;

        var.vt = VT_BSTR;
        r = FUNC12(bag, L"FriendlyName", &var, NULL);
        if (r != S_OK)
            goto fail1;
        friendly_name = FUNC16(var.bstrVal);

        if (pfilter) {
            if (FUNC17(device_name, friendly_name) && FUNC17(device_name, unique_name))
                goto fail1;

            if (!skip--) {
                r = FUNC8(m, 0, 0, &IID_IBaseFilter, (void *) &device_filter);
                if (r != S_OK) {
                    FUNC15(avctx, AV_LOG_ERROR, "Unable to BindToObject for %s\n", device_name);
                    goto fail1;
                }
                *device_unique_name = unique_name;
                unique_name = NULL;
                // success, loop will end now
            }
        } else {
            FUNC15(avctx, AV_LOG_INFO, " \"%s\"\n", friendly_name);
            FUNC15(avctx, AV_LOG_INFO, "    Alternative name \"%s\"\n", unique_name);
        }

fail1:
        if (olestr && co_malloc)
            FUNC7(co_malloc, olestr);
        if (bind_ctx)
            FUNC3(bind_ctx);
        FUNC14(&friendly_name);
        FUNC14(&unique_name);
        if (bag)
            FUNC13(bag);
        FUNC11(m);
    }

    FUNC6(classenum);

    if (pfilter) {
        if (!device_filter) {
            FUNC15(avctx, AV_LOG_ERROR, "Could not find %s device with name [%s] among source devices of type %s.\n",
                   devtypename, device_name, sourcetypename);
            return FUNC0(EIO);
        }
        *pfilter = device_filter;
    }

    return 0;
}