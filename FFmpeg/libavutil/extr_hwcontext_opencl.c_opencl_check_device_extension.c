
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cl_device_id ;


 int CL_DEVICE_EXTENSIONS ;
 int av_free (char*) ;
 char* opencl_get_device_string (int ,int ) ;
 scalar_t__ strstr (char*,char const*) ;

__attribute__((used)) static int opencl_check_device_extension(cl_device_id device_id,
                                         const char *name)
{
    char *str;
    int found = 0;
    str = opencl_get_device_string(device_id,
                                   CL_DEVICE_EXTENSIONS);
    if (str && strstr(str, name))
        found = 1;
    av_free(str);
    return found;
}
