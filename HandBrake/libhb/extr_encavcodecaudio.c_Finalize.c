
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* context; } ;
typedef TYPE_4__ hb_work_private_t ;
struct TYPE_11__ {TYPE_2__* config; TYPE_4__* private_data; } ;
typedef TYPE_5__ hb_work_object_t ;
struct TYPE_9__ {int extradata_size; int * extradata; } ;
struct TYPE_7__ {int length; int bytes; } ;
struct TYPE_8__ {TYPE_1__ extradata; } ;


 int memcpy (int ,int *,int ) ;

__attribute__((used)) static void Finalize(hb_work_object_t *w)
{
    hb_work_private_t *pv = w->private_data;


    if (pv->context->extradata != ((void*)0))
    {
        memcpy(w->config->extradata.bytes, pv->context->extradata,
               pv->context->extradata_size);
        w->config->extradata.length = pv->context->extradata_size;
    }
}
