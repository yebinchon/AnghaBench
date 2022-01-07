
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
typedef TYPE_2__* gz_statep ;
struct TYPE_5__ {int avail_in; unsigned char* next_in; } ;
struct TYPE_6__ {scalar_t__ err; scalar_t__ eof; unsigned char* in; scalar_t__ size; TYPE_1__ strm; } ;


 scalar_t__ Z_BUF_ERROR ;
 scalar_t__ Z_OK ;
 int gz_load (TYPE_2__*,unsigned char*,scalar_t__,unsigned int*) ;

__attribute__((used)) static int gz_avail(gz_statep state)
{
   unsigned got;
   z_streamp strm = &(state->strm);

   if (state->err != Z_OK && state->err != Z_BUF_ERROR)
      return -1;
   if (state->eof == 0) {
      if (strm->avail_in) {
         unsigned char *p = state->in;
         unsigned const char *q = strm->next_in;
         unsigned n = strm->avail_in;
         do {
            *p++ = *q++;
         } while (--n);
      }
      if (gz_load(state, state->in + strm->avail_in,
               state->size - strm->avail_in, &got) == -1)
         return -1;
      strm->avail_in += got;
      strm->next_in = state->in;
   }
   return 0;
}
