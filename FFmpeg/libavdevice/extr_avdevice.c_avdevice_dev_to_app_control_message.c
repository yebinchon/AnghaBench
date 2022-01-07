
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AVFormatContext {int (* control_message_cb ) (struct AVFormatContext*,int,void*,size_t) ;} ;
typedef enum AVDevToAppMessageType { ____Placeholder_AVDevToAppMessageType } AVDevToAppMessageType ;


 int AVERROR (int ) ;
 int ENOSYS ;
 int stub1 (struct AVFormatContext*,int,void*,size_t) ;

int avdevice_dev_to_app_control_message(struct AVFormatContext *s, enum AVDevToAppMessageType type,
                                        void *data, size_t data_size)
{
    if (!s->control_message_cb)
        return AVERROR(ENOSYS);
    return s->control_message_cb(s, type, data, data_size);
}
