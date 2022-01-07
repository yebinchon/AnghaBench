
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct rpng_process {int inflate_buf_size; int avail_out; scalar_t__ stream; TYPE_3__* stream_backend; int * inflate_buf; scalar_t__ total_out; scalar_t__ avail_in; } ;
struct TYPE_6__ {scalar_t__ size; int data; } ;
struct TYPE_9__ {int interlace; int height; int width; } ;
struct TYPE_7__ {TYPE_1__ idat_buf; TYPE_5__ ihdr; } ;
typedef TYPE_2__ rpng_t ;
struct TYPE_8__ {int (* stream_free ) (scalar_t__) ;int (* set_out ) (scalar_t__,int *,int ) ;int (* set_in ) (scalar_t__,int ,int ) ;scalar_t__ (* stream_new ) () ;} ;


 scalar_t__ calloc (int,int) ;
 int free (struct rpng_process*) ;
 scalar_t__ malloc (int) ;
 int png_pass_geom (TYPE_5__*,int ,int ,int *,int *,int*) ;
 scalar_t__ stub1 () ;
 int stub2 (scalar_t__,int ,int ) ;
 int stub3 (scalar_t__,int *,int ) ;
 int stub4 (scalar_t__) ;
 TYPE_3__* trans_stream_get_zlib_inflate_backend () ;

__attribute__((used)) static struct rpng_process *rpng_process_init(rpng_t *rpng)
{
   uint8_t *inflate_buf = ((void*)0);
   struct rpng_process *process = (struct rpng_process*)calloc(1, sizeof(*process));

   if (!process)
      return ((void*)0);

   process->stream_backend = trans_stream_get_zlib_inflate_backend();

   png_pass_geom(&rpng->ihdr, rpng->ihdr.width,
         rpng->ihdr.height, ((void*)0), ((void*)0), &process->inflate_buf_size);
   if (rpng->ihdr.interlace == 1)
      process->inflate_buf_size *= 2;

   process->stream = process->stream_backend->stream_new();

   if (!process->stream)
   {
      free(process);
      return ((void*)0);
   }

   inflate_buf = (uint8_t*)malloc(process->inflate_buf_size);
   if (!inflate_buf)
      goto error;

   process->inflate_buf = inflate_buf;
   process->avail_in = rpng->idat_buf.size;
   process->avail_out = process->inflate_buf_size;
   process->total_out = 0;
   process->stream_backend->set_in(
         process->stream,
         rpng->idat_buf.data,
         (uint32_t)rpng->idat_buf.size);
   process->stream_backend->set_out(
         process->stream,
         process->inflate_buf,
         (uint32_t)process->inflate_buf_size);

   return process;

error:
   if (process)
   {
      if (process->stream)
         process->stream_backend->stream_free(process->stream);
      free(process);
   }
   return ((void*)0);
}
