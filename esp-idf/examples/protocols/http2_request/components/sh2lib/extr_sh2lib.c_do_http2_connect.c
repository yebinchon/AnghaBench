
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh2lib_handle {int http2_sess; } ;
typedef int nghttp2_session_callbacks ;


 int ESP_LOGE (int ,char*) ;
 int NGHTTP2_FLAG_NONE ;
 int TAG ;
 int callback_on_data_chunk_recv ;
 int callback_on_frame_recv ;
 int callback_on_frame_send ;
 int callback_on_header ;
 int callback_on_stream_close ;
 int callback_recv ;
 int callback_send ;
 int nghttp2_session_callbacks_del (int *) ;
 int nghttp2_session_callbacks_new (int **) ;
 int nghttp2_session_callbacks_set_on_data_chunk_recv_callback (int *,int ) ;
 int nghttp2_session_callbacks_set_on_frame_recv_callback (int *,int ) ;
 int nghttp2_session_callbacks_set_on_frame_send_callback (int *,int ) ;
 int nghttp2_session_callbacks_set_on_header_callback (int *,int ) ;
 int nghttp2_session_callbacks_set_on_stream_close_callback (int *,int ) ;
 int nghttp2_session_callbacks_set_recv_callback (int *,int ) ;
 int nghttp2_session_callbacks_set_send_callback (int *,int ) ;
 int nghttp2_session_client_new (int *,int *,struct sh2lib_handle*) ;
 int nghttp2_submit_settings (int ,int ,int *,int ) ;

__attribute__((used)) static int do_http2_connect(struct sh2lib_handle *hd)
{
    int ret;
    nghttp2_session_callbacks *callbacks;
    nghttp2_session_callbacks_new(&callbacks);
    nghttp2_session_callbacks_set_send_callback(callbacks, callback_send);
    nghttp2_session_callbacks_set_recv_callback(callbacks, callback_recv);
    nghttp2_session_callbacks_set_on_frame_send_callback(callbacks, callback_on_frame_send);
    nghttp2_session_callbacks_set_on_frame_recv_callback(callbacks, callback_on_frame_recv);
    nghttp2_session_callbacks_set_on_stream_close_callback(callbacks, callback_on_stream_close);
    nghttp2_session_callbacks_set_on_data_chunk_recv_callback(callbacks, callback_on_data_chunk_recv);
    nghttp2_session_callbacks_set_on_header_callback(callbacks, callback_on_header);
    ret = nghttp2_session_client_new(&hd->http2_sess, callbacks, hd);
    if (ret != 0) {
        ESP_LOGE(TAG, "[sh2-connect] New http2 session failed");
        nghttp2_session_callbacks_del(callbacks);
        return -1;
    }
    nghttp2_session_callbacks_del(callbacks);


    ret = nghttp2_submit_settings(hd->http2_sess, NGHTTP2_FLAG_NONE, ((void*)0), 0);
    if (ret != 0) {
        ESP_LOGE(TAG, "[sh2-connect] Submit settings failed");
        return -1;
    }
    return 0;
}
