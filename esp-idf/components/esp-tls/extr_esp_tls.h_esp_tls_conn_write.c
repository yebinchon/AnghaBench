
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_4__ {int (* write ) (TYPE_1__*,char*,size_t) ;} ;
typedef TYPE_1__ esp_tls_t ;


 int stub1 (TYPE_1__*,char*,size_t) ;

__attribute__((used)) static inline ssize_t esp_tls_conn_write(esp_tls_t *tls, const void *data, size_t datalen)
{
    return tls->write(tls, (char *)data, datalen);
}
