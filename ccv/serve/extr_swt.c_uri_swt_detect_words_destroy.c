
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* data; } ;
struct TYPE_5__ {TYPE_1__ desc; int tesseract; } ;
typedef TYPE_2__ swt_context_t ;


 int TessBaseAPIDelete (int ) ;
 int free (TYPE_2__*) ;

void uri_swt_detect_words_destroy(void* context)
{
 swt_context_t* swt_context = (swt_context_t*)context;



 free(swt_context->desc.data);
 free(swt_context);
}
