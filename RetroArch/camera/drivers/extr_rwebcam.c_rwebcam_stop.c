
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RWebCamStop (void*) ;

__attribute__((used)) static void rwebcam_stop(void *data)
{
   RWebCamStop(data);
}
