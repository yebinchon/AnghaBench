
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rpng_process {scalar_t__ avail_in; scalar_t__ avail_out; int inflate_initialized; int palette; scalar_t__ restore_buf_size; scalar_t__ adam7_restore_buf_size; int * stream; TYPE_1__* stream_backend; int total_out; } ;
struct TYPE_7__ {int width; int height; int interlace; } ;
struct TYPE_6__ {TYPE_4__ ihdr; int palette; scalar_t__ process; } ;
typedef TYPE_2__ rpng_t ;
typedef enum trans_stream_error { ____Placeholder_trans_stream_error } trans_stream_error ;
struct TYPE_5__ {int (* trans ) (int *,int,scalar_t__*,scalar_t__*,int*) ;int (* stream_free ) (int *) ;} ;


 int TRANS_STREAM_ERROR_BUFFER_FULL ;
 scalar_t__ malloc (int) ;
 scalar_t__ memalign (int,int) ;
 int png_reverse_filter_init (TYPE_4__*,struct rpng_process*) ;
 int stub1 (int *,int,scalar_t__*,scalar_t__*,int*) ;
 int stub2 (int *) ;

__attribute__((used)) static int rpng_load_image_argb_process_inflate_init(rpng_t *rpng, uint32_t **data)
{
   bool zstatus;
   enum trans_stream_error terror;
   uint32_t rd, wn;
   struct rpng_process *process = (struct rpng_process*)rpng->process;
   bool to_continue = (process->avail_in > 0
         && process->avail_out > 0);

   if (!to_continue)
      goto end;

   zstatus = process->stream_backend->trans(process->stream, 0, &rd, &wn, &terror);

   if (!zstatus && terror != TRANS_STREAM_ERROR_BUFFER_FULL)
      goto error;

   process->avail_in -= rd;
   process->avail_out -= wn;
   process->total_out += wn;

   if (terror)
      return 0;

end:
   process->stream_backend->stream_free(process->stream);
   process->stream = ((void*)0);






   *data = (uint32_t*)malloc(rpng->ihdr.width *
         rpng->ihdr.height * sizeof(uint32_t));

   if (!*data)
      goto false_end;

   process->adam7_restore_buf_size = 0;
   process->restore_buf_size = 0;
   process->palette = rpng->palette;

   if (rpng->ihdr.interlace != 1)
      if (png_reverse_filter_init(&rpng->ihdr, process) == -1)
         goto false_end;

   process->inflate_initialized = 1;
   return 1;

error:
false_end:
   process->inflate_initialized = 0;
   return -1;
}
