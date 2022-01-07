
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACameraCaptureSession ;


 int AV_LOG_INFO ;
 int av_log (void*,int ,char*) ;

__attribute__((used)) static void capture_session_active(void *context, ACameraCaptureSession *session)
{
    av_log(context, AV_LOG_INFO, "Android camera capture session is active.\n");
}
