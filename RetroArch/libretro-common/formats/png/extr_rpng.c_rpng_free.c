
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* data; } ;
struct TYPE_9__ {struct TYPE_9__* process; struct TYPE_9__* stream; TYPE_1__* stream_backend; struct TYPE_9__* inflate_buf; TYPE_2__ idat_buf; } ;
typedef TYPE_3__ rpng_t ;
struct TYPE_7__ {int (* stream_free ) (TYPE_3__*) ;} ;


 int free (TYPE_3__*) ;
 int stub1 (TYPE_3__*) ;

void rpng_free(rpng_t *rpng)
{
   if (!rpng)
      return;

   if (rpng->idat_buf.data)
      free(rpng->idat_buf.data);
   if (rpng->process)
   {
      if (rpng->process->inflate_buf)
         free(rpng->process->inflate_buf);
      if (rpng->process->stream)
      {
         if (rpng->process->stream_backend && rpng->process->stream_backend->stream_free)
            rpng->process->stream_backend->stream_free(rpng->process->stream);
         else
            free(rpng->process->stream);
      }
      free(rpng->process);
   }

   free(rpng);
}
