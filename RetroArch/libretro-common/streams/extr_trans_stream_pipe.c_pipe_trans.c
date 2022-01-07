
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pipe_trans_stream {scalar_t__ out_size; scalar_t__ in_size; int out; int in; } ;
typedef enum trans_stream_error { ____Placeholder_trans_stream_error } trans_stream_error ;


 int TRANS_STREAM_ERROR_BUFFER_FULL ;
 int TRANS_STREAM_ERROR_NONE ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static bool pipe_trans(
   void *data, bool flush,
   uint32_t *rd, uint32_t *wn,
   enum trans_stream_error *error)
{
   struct pipe_trans_stream *p = (struct pipe_trans_stream *) data;

   if (p->out_size < p->in_size)
   {
      memcpy(p->out, p->in, p->out_size);
      *rd = *wn = p->out_size;
      p->in += p->out_size;
      p->out += p->out_size;
      *error = TRANS_STREAM_ERROR_BUFFER_FULL;
      return 0;
   }
   else
   {
      memcpy(p->out, p->in, p->in_size);
      *rd = *wn = p->in_size;
      p->in += p->in_size;
      p->out += p->in_size;
      *error = TRANS_STREAM_ERROR_NONE;
      return 1;
   }
}
