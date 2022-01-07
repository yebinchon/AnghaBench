
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RWebCamStart (void*) ;

__attribute__((used)) static bool rwebcam_start(void *data)
{
   return RWebCamStart(data);
}
