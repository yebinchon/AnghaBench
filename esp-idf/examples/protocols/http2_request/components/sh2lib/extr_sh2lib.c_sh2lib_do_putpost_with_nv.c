
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sh2lib_handle {int http2_sess; } ;
typedef int sh2lib_putpost_data_cb_t ;
typedef int sh2lib_frame_data_recv_cb_t ;
typedef int nghttp2_nv ;
struct TYPE_4__ {int ptr; } ;
struct TYPE_5__ {TYPE_1__ source; int read_callback; } ;
typedef TYPE_2__ nghttp2_data_provider ;


 int ESP_LOGE (int ,char*) ;
 int TAG ;
 int nghttp2_submit_request (int ,int *,int const*,size_t,TYPE_2__*,int ) ;
 int sh2lib_data_provider_cb ;

int sh2lib_do_putpost_with_nv(struct sh2lib_handle *hd, const nghttp2_nv *nva, size_t nvlen,
                              sh2lib_putpost_data_cb_t send_cb,
                              sh2lib_frame_data_recv_cb_t recv_cb)
{

    nghttp2_data_provider sh2lib_data_provider;
    sh2lib_data_provider.read_callback = sh2lib_data_provider_cb;
    sh2lib_data_provider.source.ptr = send_cb;
    int ret = nghttp2_submit_request(hd->http2_sess, ((void*)0), nva, nvlen, &sh2lib_data_provider, recv_cb);
    if (ret < 0) {
        ESP_LOGE(TAG, "[sh2-do-putpost] HEADERS call failed");
        return -1;
    }
    return ret;
}
