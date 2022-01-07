
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int data; int size; } ;
struct TYPE_11__ {TYPE_3__ packet_info; int context; TYPE_2__* parser; } ;
typedef TYPE_4__ hb_work_private_t ;
struct TYPE_12__ {int extradata_size; int * extradata; } ;
struct TYPE_9__ {TYPE_1__* parser; } ;
struct TYPE_8__ {int (* split ) (int ,int ,int ) ;} ;
typedef TYPE_5__ AVCodecContext ;


 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int * av_malloc (scalar_t__) ;
 int memcpy (int *,int ,int) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static int setup_extradata( hb_work_private_t * pv, AVCodecContext * context )
{





    if (context->extradata == ((void*)0))
    {
        if (pv->parser == ((void*)0) || pv->parser->parser == ((void*)0) ||
            pv->parser->parser->split == ((void*)0))
        {
            return 0;
        }
        else
        {
            int size;
            size = pv->parser->parser->split(pv->context, pv->packet_info.data,
                                             pv->packet_info.size);
            if (size > 0)
            {
                context->extradata_size = size;
                context->extradata =
                                av_malloc(size + AV_INPUT_BUFFER_PADDING_SIZE);
                if (context->extradata == ((void*)0))
                    return 1;
                memcpy(context->extradata, pv->packet_info.data, size);
                return 0;
            }
        }
        return 1;
    }

    return 0;
}
