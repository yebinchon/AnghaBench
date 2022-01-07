
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * user_data; } ;
typedef TYPE_1__ MMAL_WRAPPER_T ;
typedef int BRCMJPEG_T ;


 int SIGNAL (int *) ;

__attribute__((used)) static void brcmjpeg_mmal_cb(MMAL_WRAPPER_T *wrapper)
{
   BRCMJPEG_T *ctx = wrapper->user_data;
   SIGNAL(ctx);
}
