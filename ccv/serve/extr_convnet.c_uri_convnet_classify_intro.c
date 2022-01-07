
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int len; int data; } ;
typedef TYPE_2__ ebb_buf ;
struct TYPE_5__ {int len; int data; } ;
struct TYPE_7__ {TYPE_1__ desc; } ;
typedef TYPE_3__ convnet_context_t ;



int uri_convnet_classify_intro(const void* context, const void* parsed, ebb_buf* buf)
{
 convnet_context_t* convnet_context = (convnet_context_t*)context;
 buf->data = convnet_context->desc.data;
 buf->len = convnet_context->desc.len;
 return 0;
}
