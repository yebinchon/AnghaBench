
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 void* RWebCamInit (int ,unsigned int,unsigned int) ;

__attribute__((used)) static void *rwebcam_init(const char *device, uint64_t caps,
      unsigned width, unsigned height)
{
   (void)device;
   return RWebCamInit(caps, width, height);
}
