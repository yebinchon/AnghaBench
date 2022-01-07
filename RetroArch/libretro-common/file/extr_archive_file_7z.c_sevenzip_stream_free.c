
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file; } ;
struct sevenzip_context_t {TYPE_1__ archiveStream; int allocImp; int db; TYPE_2__* handle; int * output; } ;
struct TYPE_4__ {int * data; } ;


 int File_Close (int *) ;
 int IAlloc_Free (int *,int *) ;
 int SzArEx_Free (int *,int *) ;

__attribute__((used)) static void sevenzip_stream_free(void *data)
{
   struct sevenzip_context_t *sevenzip_context = (struct sevenzip_context_t*)data;

   if (!sevenzip_context)
      return;

   if (sevenzip_context->output)
   {
      IAlloc_Free(&sevenzip_context->allocImp, sevenzip_context->output);
      sevenzip_context->output = ((void*)0);
      sevenzip_context->handle->data = ((void*)0);
   }

   SzArEx_Free(&sevenzip_context->db, &sevenzip_context->allocImp);
   File_Close(&sevenzip_context->archiveStream.file);
}
