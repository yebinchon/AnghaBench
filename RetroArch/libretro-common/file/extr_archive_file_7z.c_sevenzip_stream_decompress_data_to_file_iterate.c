
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s; } ;
struct sevenzip_context_t {scalar_t__ output; TYPE_2__* handle; int allocTempImp; int allocImp; int block_index; int index; TYPE_1__ lookStream; int db; } ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef scalar_t__ SRes ;


 scalar_t__ SZ_ERROR_FAIL ;
 scalar_t__ SZ_OK ;
 scalar_t__ SzArEx_Extract (int *,int *,int ,int *,scalar_t__*,size_t*,size_t*,size_t*,int *,int *) ;

__attribute__((used)) static int sevenzip_stream_decompress_data_to_file_iterate(void *data)
{
   struct sevenzip_context_t *sevenzip_context =
         (struct sevenzip_context_t*)data;

   SRes res = SZ_ERROR_FAIL;
   size_t output_size = 0;
   size_t offset = 0;
   size_t outSizeProcessed = 0;

   res = SzArEx_Extract(&sevenzip_context->db,
         &sevenzip_context->lookStream.s, sevenzip_context->index,
         &sevenzip_context->block_index, &sevenzip_context->output,
         &output_size, &offset, &outSizeProcessed,
         &sevenzip_context->allocImp, &sevenzip_context->allocTempImp);

   if (res != SZ_OK)
      return 0;

   if (sevenzip_context->handle)
      sevenzip_context->handle->data = sevenzip_context->output + offset;

   return 1;
}
