
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int va_device_ref; int * session; } ;
typedef TYPE_1__ QSVSession ;


 int MFXClose (int *) ;
 int av_buffer_unref (int *) ;

int ff_qsv_close_internal_session(QSVSession *qs)
{
    if (qs->session) {
        MFXClose(qs->session);
        qs->session = ((void*)0);
    }



    return 0;
}
