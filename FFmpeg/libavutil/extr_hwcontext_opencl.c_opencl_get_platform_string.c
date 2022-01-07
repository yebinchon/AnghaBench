
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cl_platform_info ;
typedef int cl_platform_id ;
typedef scalar_t__ cl_int ;


 scalar_t__ CL_SUCCESS ;
 int av_assert0 (int) ;
 int av_free (char*) ;
 char* av_malloc (size_t) ;
 scalar_t__ clGetPlatformInfo (int ,int ,size_t,char*,size_t*) ;
 int strlen (char*) ;

__attribute__((used)) static char *opencl_get_platform_string(cl_platform_id platform_id,
                                        cl_platform_info key)
{
    char *str;
    size_t size;
    cl_int cle;
    cle = clGetPlatformInfo(platform_id, key, 0, ((void*)0), &size);
    if (cle != CL_SUCCESS)
        return ((void*)0);
    str = av_malloc(size);
    if (!str)
        return ((void*)0);
    cle = clGetPlatformInfo(platform_id, key, size, str, &size);
    if (cle != CL_SUCCESS) {
        av_free(str);
        return ((void*)0);
    }
    av_assert0(strlen(str) + 1 == size);
    return str;
}
