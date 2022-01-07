
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* gz_statep ;
typedef int * gzFile ;
struct TYPE_5__ {int have; unsigned char* next; int pos; } ;
struct TYPE_6__ {scalar_t__ mode; scalar_t__ err; unsigned char* out; int size; scalar_t__ past; TYPE_1__ x; int skip; scalar_t__ seek; } ;


 scalar_t__ GZ_READ ;
 scalar_t__ Z_BUF_ERROR ;
 int Z_DATA_ERROR ;
 scalar_t__ Z_OK ;
 int gz_error (TYPE_2__*,int ,char*) ;
 int gz_skip (TYPE_2__*,int ) ;

int gzungetc(int c, gzFile file)
{
   gz_statep state;


   if (file == ((void*)0))
      return -1;
   state = (gz_statep)file;


   if (state->mode != GZ_READ ||
         (state->err != Z_OK && state->err != Z_BUF_ERROR))
      return -1;


   if (state->seek) {
      state->seek = 0;
      if (gz_skip(state, state->skip) == -1)
         return -1;
   }


   if (c < 0)
      return -1;


   if (state->x.have == 0) {
      state->x.have = 1;
      state->x.next = state->out + (state->size << 1) - 1;
      state->x.next[0] = c;
      state->x.pos--;
      state->past = 0;
      return c;
   }


   if (state->x.have == (state->size << 1)) {
      gz_error(state, Z_DATA_ERROR, "out of room to push characters");
      return -1;
   }


   if (state->x.next == state->out) {
      unsigned char *src = state->out + state->x.have;
      unsigned char *dest = state->out + (state->size << 1);
      while (src > state->out)
         *--dest = *--src;
      state->x.next = dest;
   }
   state->x.have++;
   state->x.next--;
   state->x.next[0] = c;
   state->x.pos--;
   state->past = 0;
   return c;
}
