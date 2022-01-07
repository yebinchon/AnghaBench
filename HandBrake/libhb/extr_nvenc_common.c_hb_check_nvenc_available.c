
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ (* NvEncodeAPIGetMaxSupportedVersion ) (int*) ;} ;
typedef TYPE_1__ NvencFunctions ;
typedef scalar_t__ NVENCSTATUS ;


 int NVENCAPI_MAJOR_VERSION ;
 int NVENCAPI_MINOR_VERSION ;
 scalar_t__ NV_ENC_SUCCESS ;
 int hb_log (char*,...) ;
 int isAvailable ;
 scalar_t__ is_hardware_disabled () ;
 int nvenc_load_functions (TYPE_1__**,void*) ;
 scalar_t__ stub1 (int*) ;

int hb_check_nvenc_available()
{
    if (is_hardware_disabled())
    {
        return 0;
    }

    if (isAvailable != -1){
        return isAvailable;
    }
        return 0;

}
