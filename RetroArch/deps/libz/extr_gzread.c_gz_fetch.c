
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* z_streamp ;
typedef TYPE_3__* gz_statep ;
struct TYPE_8__ {scalar_t__ have; int next; } ;
struct TYPE_9__ {int avail_out; int next_out; scalar_t__ avail_in; } ;
struct TYPE_10__ {int how; int size; int out; TYPE_1__ x; int eof; TYPE_2__ strm; } ;





 int gz_decomp (TYPE_3__*) ;
 int gz_load (TYPE_3__*,int ,int,scalar_t__*) ;
 int gz_look (TYPE_3__*) ;

__attribute__((used)) static int gz_fetch(gz_statep state)
{
   z_streamp strm = &(state->strm);

   do {
      switch(state->how) {
         case 130:
            if (gz_look(state) == -1)
               return -1;
            if (state->how == 130)
               return 0;
            break;
         case 129:
            if (gz_load(state, state->out, state->size << 1, &(state->x.have))
                  == -1)
               return -1;
            state->x.next = state->out;
            return 0;
         case 128:
            strm->avail_out = state->size << 1;
            strm->next_out = state->out;
            if (gz_decomp(state) == -1)
               return -1;
      }
   } while (state->x.have == 0 && (!state->eof || strm->avail_in));
   return 0;
}
