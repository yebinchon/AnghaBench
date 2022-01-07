
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int MppFrameFormat ;


 int DRM_FORMAT_NV12 ;
 int DRM_FORMAT_NV12_10 ;



__attribute__((used)) static uint32_t rkmpp_get_frameformat(MppFrameFormat mppformat)
{
    switch (mppformat) {
    case 129: return DRM_FORMAT_NV12;



    default: return 0;
    }
}
