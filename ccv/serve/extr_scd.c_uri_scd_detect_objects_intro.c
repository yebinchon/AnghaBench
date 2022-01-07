
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int data; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;
typedef TYPE_2__ scd_context_t ;
struct TYPE_7__ {int len; int data; } ;
typedef TYPE_3__ ebb_buf ;



int uri_scd_detect_objects_intro(const void* context, const void* parsed, ebb_buf* buf)
{
 scd_context_t* scd_context = (scd_context_t*)context;
 buf->data = scd_context->desc.data;
 buf->len = scd_context->desc.len;
 return 0;
}
