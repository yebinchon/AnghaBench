
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dshow_ctx {char** device_name; int video_device_number; int audio_device_number; } ;
typedef enum dshowSourceFilterType { ____Placeholder_dshowSourceFilterType } dshowSourceFilterType ;
typedef enum dshowDeviceType { ____Placeholder_dshowDeviceType } dshowDeviceType ;
struct TYPE_6__ {int * bstrVal; int vt; } ;
typedef TYPE_1__ VARIANT ;
struct TYPE_7__ {struct dshow_ctx* priv_data; } ;
typedef int * LPOLESTR ;
typedef int * LPMALLOC ;
typedef int IPropertyBag ;
typedef int IMoniker ;
typedef int IEnumMoniker ;
typedef int ICreateDevEnum ;
typedef int IBindCtx ;
typedef int IBaseFilter ;
typedef int GUID ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int const CLSID_AudioInputDeviceCategory ;
 int const CLSID_VideoInputDeviceCategory ;
 int CoGetMalloc (int,int **) ;
 int CreateBindCtx (int ,int **) ;
 int EIO ;
 int IBindCtx_Release (int *) ;
 int ICreateDevEnum_CreateClassEnumerator (int *,int const*,int **,int ) ;
 int IEnumMoniker_Next (int *,int,int **,int *) ;
 int IEnumMoniker_Release (int *) ;
 int IID_IBaseFilter ;
 int IID_IPropertyBag ;
 int IMalloc_Free (int *,int *) ;
 int IMoniker_BindToObject (int *,int ,int ,int *,void*) ;
 int IMoniker_BindToStorage (int *,int ,int ,int *,void*) ;
 int IMoniker_GetDisplayName (int *,int *,int *,int **) ;
 int IMoniker_Release (int *) ;
 int IPropertyBag_Read (int *,char*,TYPE_1__*,int *) ;
 int IPropertyBag_Release (int *) ;
 int S_OK ;
 int VT_BSTR ;
 int VideoDevice ;
 int VideoSourceDevice ;
 int av_freep (char**) ;
 int av_log (TYPE_2__*,int ,char*,char const*,...) ;
 char* dup_wchar_to_utf8 (int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
dshow_cycle_devices(AVFormatContext *avctx, ICreateDevEnum *devenum,
                    enum dshowDeviceType devtype, enum dshowSourceFilterType sourcetype,
                    IBaseFilter **pfilter, char **device_unique_name)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    IBaseFilter *device_filter = ((void*)0);
    IEnumMoniker *classenum = ((void*)0);
    IMoniker *m = ((void*)0);
    const char *device_name = ctx->device_name[devtype];
    int skip = (devtype == VideoDevice) ? ctx->video_device_number
                                        : ctx->audio_device_number;
    int r;

    const GUID *device_guid[2] = { &CLSID_VideoInputDeviceCategory,
                                   &CLSID_AudioInputDeviceCategory };
    const char *devtypename = (devtype == VideoDevice) ? "video" : "audio only";
    const char *sourcetypename = (sourcetype == VideoSourceDevice) ? "video" : "audio";

    r = ICreateDevEnum_CreateClassEnumerator(devenum, device_guid[sourcetype],
                                             (IEnumMoniker **) &classenum, 0);
    if (r != S_OK) {
        av_log(avctx, AV_LOG_ERROR, "Could not enumerate %s devices (or none found).\n",
               devtypename);
        return AVERROR(EIO);
    }

    while (!device_filter && IEnumMoniker_Next(classenum, 1, &m, ((void*)0)) == S_OK) {
        IPropertyBag *bag = ((void*)0);
        char *friendly_name = ((void*)0);
        char *unique_name = ((void*)0);
        VARIANT var;
        IBindCtx *bind_ctx = ((void*)0);
        LPOLESTR olestr = ((void*)0);
        LPMALLOC co_malloc = ((void*)0);
        int i;

        r = CoGetMalloc(1, &co_malloc);
        if (r != S_OK)
            goto fail1;
        r = CreateBindCtx(0, &bind_ctx);
        if (r != S_OK)
            goto fail1;

        r = IMoniker_GetDisplayName(m, bind_ctx, ((void*)0), &olestr);
        if (r != S_OK)
            goto fail1;
        unique_name = dup_wchar_to_utf8(olestr);

        for (i = 0; i < strlen(unique_name); i++) {
            if (unique_name[i] == ':')
                unique_name[i] = '_';
        }

        r = IMoniker_BindToStorage(m, 0, 0, &IID_IPropertyBag, (void *) &bag);
        if (r != S_OK)
            goto fail1;

        var.vt = VT_BSTR;
        r = IPropertyBag_Read(bag, L"FriendlyName", &var, ((void*)0));
        if (r != S_OK)
            goto fail1;
        friendly_name = dup_wchar_to_utf8(var.bstrVal);

        if (pfilter) {
            if (strcmp(device_name, friendly_name) && strcmp(device_name, unique_name))
                goto fail1;

            if (!skip--) {
                r = IMoniker_BindToObject(m, 0, 0, &IID_IBaseFilter, (void *) &device_filter);
                if (r != S_OK) {
                    av_log(avctx, AV_LOG_ERROR, "Unable to BindToObject for %s\n", device_name);
                    goto fail1;
                }
                *device_unique_name = unique_name;
                unique_name = ((void*)0);

            }
        } else {
            av_log(avctx, AV_LOG_INFO, " \"%s\"\n", friendly_name);
            av_log(avctx, AV_LOG_INFO, "    Alternative name \"%s\"\n", unique_name);
        }

fail1:
        if (olestr && co_malloc)
            IMalloc_Free(co_malloc, olestr);
        if (bind_ctx)
            IBindCtx_Release(bind_ctx);
        av_freep(&friendly_name);
        av_freep(&unique_name);
        if (bag)
            IPropertyBag_Release(bag);
        IMoniker_Release(m);
    }

    IEnumMoniker_Release(classenum);

    if (pfilter) {
        if (!device_filter) {
            av_log(avctx, AV_LOG_ERROR, "Could not find %s device with name [%s] among source devices of type %s.\n",
                   devtypename, device_name, sourcetypename);
            return AVERROR(EIO);
        }
        *pfilter = device_filter;
    }

    return 0;
}
