
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_5__ {char const* name; int type; int * device_ref; } ;
typedef TYPE_1__ HWDevice ;
typedef int AVDictionary ;
typedef int AVBufferRef ;


 int AVERROR (int ) ;
 int AV_HWDEVICE_TYPE_NONE ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int av_buffer_unref (int **) ;
 int av_dict_free (int **) ;
 int av_dict_parse_string (int **,char const*,char*,char*,int ) ;
 int av_freep (char const**) ;
 int av_hwdevice_ctx_create (int **,int,char const*,int *,int ) ;
 int av_hwdevice_ctx_create_derived (int **,int,int *,int ) ;
 int av_hwdevice_find_type_by_name (char const*) ;
 int av_log (int *,int ,char*,...) ;
 char* av_strndup (char const*,int) ;
 TYPE_1__* hw_device_add () ;
 char* hw_device_default_name (int) ;
 TYPE_1__* hw_device_get_by_name (char const*) ;
 char* strchr (char const*,char) ;
 size_t strcspn (char const*,char*) ;

int hw_device_init_from_string(const char *arg, HWDevice **dev_out)
{







    AVDictionary *options = ((void*)0);
    const char *type_name = ((void*)0), *name = ((void*)0), *device = ((void*)0);
    enum AVHWDeviceType type;
    HWDevice *dev, *src;
    AVBufferRef *device_ref = ((void*)0);
    int err;
    const char *errmsg, *p, *q;
    size_t k;

    k = strcspn(arg, ":=@");
    p = arg + k;

    type_name = av_strndup(arg, k);
    if (!type_name) {
        err = AVERROR(ENOMEM);
        goto fail;
    }
    type = av_hwdevice_find_type_by_name(type_name);
    if (type == AV_HWDEVICE_TYPE_NONE) {
        errmsg = "unknown device type";
        goto invalid;
    }

    if (*p == '=') {
        k = strcspn(p + 1, ":@");

        name = av_strndup(p + 1, k);
        if (!name) {
            err = AVERROR(ENOMEM);
            goto fail;
        }
        if (hw_device_get_by_name(name)) {
            errmsg = "named device already exists";
            goto invalid;
        }

        p += 1 + k;
    } else {
        name = hw_device_default_name(type);
        if (!name) {
            err = AVERROR(ENOMEM);
            goto fail;
        }
    }

    if (!*p) {

        err = av_hwdevice_ctx_create(&device_ref, type,
                                     ((void*)0), ((void*)0), 0);
        if (err < 0)
            goto fail;

    } else if (*p == ':') {

        ++p;
        q = strchr(p, ',');
        if (q) {
            if (q - p > 0) {
                device = av_strndup(p, q - p);
                if (!device) {
                    err = AVERROR(ENOMEM);
                    goto fail;
                }
            }
            err = av_dict_parse_string(&options, q + 1, "=", ",", 0);
            if (err < 0) {
                errmsg = "failed to parse options";
                goto invalid;
            }
        }

        err = av_hwdevice_ctx_create(&device_ref, type,
                                     q ? device : p[0] ? p : ((void*)0),
                                     options, 0);
        if (err < 0)
            goto fail;

    } else if (*p == '@') {


        src = hw_device_get_by_name(p + 1);
        if (!src) {
            errmsg = "invalid source device name";
            goto invalid;
        }

        err = av_hwdevice_ctx_create_derived(&device_ref, type,
                                             src->device_ref, 0);
        if (err < 0)
            goto fail;
    } else {
        errmsg = "parse error";
        goto invalid;
    }

    dev = hw_device_add();
    if (!dev) {
        err = AVERROR(ENOMEM);
        goto fail;
    }

    dev->name = name;
    dev->type = type;
    dev->device_ref = device_ref;

    if (dev_out)
        *dev_out = dev;

    name = ((void*)0);
    err = 0;
done:
    av_freep(&type_name);
    av_freep(&name);
    av_freep(&device);
    av_dict_free(&options);
    return err;
invalid:
    av_log(((void*)0), AV_LOG_ERROR,
           "Invalid device specification \"%s\": %s\n", arg, errmsg);
    err = AVERROR(EINVAL);
    goto done;
fail:
    av_log(((void*)0), AV_LOG_ERROR,
           "Device creation failed: %d.\n", err);
    av_buffer_unref(&device_ref);
    goto done;
}
