
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct pipe_trans_stream {int out_size; int * out; } ;



__attribute__((used)) static void pipe_set_out(void *data, uint8_t *out, uint32_t out_size)
{
   struct pipe_trans_stream *p = (struct pipe_trans_stream *) data;
   p->out = out;
   p->out_size = out_size;
}
