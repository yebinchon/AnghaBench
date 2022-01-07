
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct sh2lib_handle {int dummy; } ;
typedef int ssize_t ;
typedef int (* sh2lib_putpost_data_cb_t ) (struct sh2lib_handle*,char*,size_t,int *) ;
typedef int nghttp2_session ;
struct TYPE_3__ {int (* ptr ) (struct sh2lib_handle*,char*,size_t,int *) ;} ;
typedef TYPE_1__ nghttp2_data_source ;
typedef int int32_t ;


 int stub1 (struct sh2lib_handle*,char*,size_t,int *) ;

ssize_t sh2lib_data_provider_cb(nghttp2_session *session, int32_t stream_id, uint8_t *buf,
                                size_t length, uint32_t *data_flags,
                                nghttp2_data_source *source, void *user_data)
{
    struct sh2lib_handle *h2 = user_data;
    sh2lib_putpost_data_cb_t data_cb = source->ptr;
    return (*data_cb)(h2, (char *)buf, length, data_flags);
}
