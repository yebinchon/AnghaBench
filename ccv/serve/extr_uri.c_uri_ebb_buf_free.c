
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ on_release; scalar_t__ written; scalar_t__ len; scalar_t__ data; } ;
typedef TYPE_1__ ebb_buf ;


 int free (scalar_t__) ;

void uri_ebb_buf_free(ebb_buf* buf)
{
 free(buf->data);
 buf->data = 0;
 buf->len = buf->written = 0;
 buf->on_release = 0;
}
