
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh2lib_handle {int http2_sess; } ;
typedef int sh2lib_frame_data_recv_cb_t ;
typedef int nghttp2_nv ;


 int ESP_LOGE (int ,char*) ;
 int TAG ;
 int nghttp2_submit_request (int ,int *,int const*,size_t,int *,int ) ;

int sh2lib_do_get_with_nv(struct sh2lib_handle *hd, const nghttp2_nv *nva, size_t nvlen, sh2lib_frame_data_recv_cb_t recv_cb)
{
    int ret = nghttp2_submit_request(hd->http2_sess, ((void*)0), nva, nvlen, ((void*)0), recv_cb);
    if (ret < 0) {
        ESP_LOGE(TAG, "[sh2-do-get] HEADERS call failed");
        return -1;
    }
    return ret;
}
