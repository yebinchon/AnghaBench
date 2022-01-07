
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int nghttp2_session ;
struct TYPE_4__ {int stream_id; } ;
struct TYPE_5__ {TYPE_1__ hd; } ;
typedef TYPE_2__ nghttp2_frame ;


 int ESP_LOGD (int ,char*,int ,int const*,int const*) ;
 int TAG ;

__attribute__((used)) static int callback_on_header(nghttp2_session *session, const nghttp2_frame *frame,
                              const uint8_t *name, size_t namelen, const uint8_t *value,
                              size_t valuelen, uint8_t flags, void *user_data)
{
    ESP_LOGD(TAG, "[hdr-recv][sid:%d] %s : %s", frame->hd.stream_id, name, value);
    return 0;
}
