
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG_PTR ;
typedef int IMediaEvent ;


 long EC_COMPLETE ;
 long EC_DEVICE_LOST ;
 long EC_ERRORABORT ;
 scalar_t__ E_ABORT ;
 int IMediaEvent_FreeEventParams (int *,long,int ,int ) ;
 scalar_t__ IMediaEvent_GetEvent (int *,long*,int *,int *,int ) ;

__attribute__((used)) static int dshow_check_event_queue(IMediaEvent *media_event)
{
    LONG_PTR p1, p2;
    long code;
    int ret = 0;

    while (IMediaEvent_GetEvent(media_event, &code, &p1, &p2, 0) != E_ABORT) {
        if (code == EC_COMPLETE || code == EC_DEVICE_LOST || code == EC_ERRORABORT)
            ret = -1;
        IMediaEvent_FreeEventParams(media_event, code, p1, p2);
    }

    return ret;
}
