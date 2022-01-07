
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ ebb_buf ;



int uri_root_discovery(const void* context, const void* parsed, ebb_buf* buf)
{
 ebb_buf* root_discovery = (ebb_buf*)context;
 buf->data = root_discovery->data;
 buf->len = root_discovery->len;
 return 0;
}
