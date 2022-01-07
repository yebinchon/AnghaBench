
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwaccel_device; } ;
typedef TYPE_1__ InputStream ;
typedef int AVDictionary ;


 int AV_HWDEVICE_TYPE_QSV ;
 int AV_LOG_ERROR ;
 int av_dict_free (int **) ;
 int av_dict_set (int **,char*,scalar_t__,int ) ;
 int av_hwdevice_ctx_create (int *,int ,int ,int *,int ) ;
 int av_log (int *,int ,char*) ;
 int hw_device_ctx ;
 scalar_t__ qsv_device ;

__attribute__((used)) static int qsv_device_init(InputStream *ist)
{
    int err;
    AVDictionary *dict = ((void*)0);

    if (qsv_device) {
        err = av_dict_set(&dict, "child_device", qsv_device, 0);
        if (err < 0)
            return err;
    }

    err = av_hwdevice_ctx_create(&hw_device_ctx, AV_HWDEVICE_TYPE_QSV,
                                 ist->hwaccel_device, dict, 0);
    if (err < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Error creating a QSV device\n");
        goto err_out;
    }

err_out:
    if (dict)
        av_dict_free(&dict);

    return err;
}
