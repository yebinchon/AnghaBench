
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct pipe_trans_stream {int in_size; int const* in; } ;



__attribute__((used)) static void pipe_set_in(void *data, const uint8_t *in, uint32_t in_size)
{
   struct pipe_trans_stream *p = (struct pipe_trans_stream *) data;
   p->in = in;
   p->in_size = in_size;
}
