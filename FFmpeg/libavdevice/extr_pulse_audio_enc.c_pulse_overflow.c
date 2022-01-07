
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_stream ;
typedef int AVFormatContext ;


 int AV_DEV_TO_APP_BUFFER_OVERFLOW ;
 int avdevice_dev_to_app_control_message (int *,int ,int *,int ) ;

__attribute__((used)) static void pulse_overflow(pa_stream *stream, void *userdata)
{
    AVFormatContext *h = userdata;
    avdevice_dev_to_app_control_message(h, AV_DEV_TO_APP_BUFFER_OVERFLOW, ((void*)0), 0);
}
