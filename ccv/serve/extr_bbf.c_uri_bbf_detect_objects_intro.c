
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
typedef TYPE_3__ bbf_context_t ;



int uri_bbf_detect_objects_intro(const void* context, const void* parsed, ebb_buf* buf)
{
 bbf_context_t* bbf_context = (bbf_context_t*)context;
 buf->data = bbf_context->desc.data;
 buf->len = bbf_context->desc.len;
 return 0;
}
