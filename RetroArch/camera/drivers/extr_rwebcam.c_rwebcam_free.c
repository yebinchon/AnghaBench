
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RWebCamFree (void*) ;

__attribute__((used)) static void rwebcam_free(void *data)
{
   RWebCamFree(data);
}
