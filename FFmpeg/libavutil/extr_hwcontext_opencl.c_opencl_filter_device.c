
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int device_type ;
typedef scalar_t__ cl_int ;
typedef int cl_device_type ;
typedef int cl_device_id ;
struct TYPE_7__ {char* key; int type; int name; } ;
struct TYPE_6__ {char* key; int value; } ;
typedef int AVHWDeviceContext ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int CL_DEVICE_TYPE ;
 scalar_t__ CL_SUCCESS ;
 int EINVAL ;
 int FF_ARRAY_ELEMS (TYPE_2__*) ;
 TYPE_1__* av_dict_get (int *,char*,int *,int ) ;
 int av_free (char*) ;
 int av_log (int *,int ,char*,...) ;
 int av_stristr (char*,int ) ;
 scalar_t__ clGetDeviceInfo (int ,int ,int,int*,int *) ;
 TYPE_2__* opencl_device_params ;
 TYPE_2__* opencl_device_types ;
 char* opencl_get_device_string (int ,int ) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static int opencl_filter_device(AVHWDeviceContext *hwdev,
                                cl_device_id device_id,
                                const char *device_name,
                                void *context)
{
    AVDictionary *opts = context;
    const AVDictionaryEntry *param;
    char *str;
    int i, ret = 0;

    param = av_dict_get(opts, "device_type", ((void*)0), 0);
    if (param) {
        cl_device_type match_type = 0, device_type;
        cl_int cle;

        for (i = 0; i < FF_ARRAY_ELEMS(opencl_device_types); i++) {
            if (!strcmp(opencl_device_types[i].key, param->value)) {
                match_type = opencl_device_types[i].type;
                break;
            }
        }
        if (!match_type) {
            av_log(hwdev, AV_LOG_ERROR, "Unknown device type %s.\n",
                   param->value);
            return AVERROR(EINVAL);
        }

        cle = clGetDeviceInfo(device_id, CL_DEVICE_TYPE,
                              sizeof(device_type), &device_type, ((void*)0));
        if (cle != CL_SUCCESS) {
            av_log(hwdev, AV_LOG_ERROR, "Failed to query device type "
                   "of device \"%s\".\n", device_name);
            return AVERROR_UNKNOWN;
        }

        if (!(device_type & match_type)) {
            av_log(hwdev, AV_LOG_DEBUG, "device_type does not match.\n");
            return 1;
        }
    }

    for (i = 0; i < FF_ARRAY_ELEMS(opencl_device_params); i++) {
        param = av_dict_get(opts, opencl_device_params[i].key,
                            ((void*)0), 0);
        if (!param)
            continue;

        str = opencl_get_device_string(device_id,
                                       opencl_device_params[i].name);
        if (!str) {
            av_log(hwdev, AV_LOG_ERROR, "Failed to query %s "
                   "of device \"%s\".\n",
                   opencl_device_params[i].key, device_name);
            return AVERROR_UNKNOWN;
        }
        if (!av_stristr(str, param->value)) {
            av_log(hwdev, AV_LOG_DEBUG, "%s does not match (\"%s\").\n",
                   param->key, str);
            ret = 1;
        }
        av_free(str);
    }

    return ret;
}
