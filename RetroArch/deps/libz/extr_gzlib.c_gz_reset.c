
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* gz_statep ;
struct TYPE_6__ {scalar_t__ avail_in; } ;
struct TYPE_7__ {scalar_t__ pos; scalar_t__ have; } ;
struct TYPE_8__ {scalar_t__ mode; TYPE_1__ strm; TYPE_2__ x; scalar_t__ seek; int how; scalar_t__ past; scalar_t__ eof; } ;


 scalar_t__ GZ_READ ;
 int LOOK ;
 int Z_OK ;
 int gz_error (TYPE_3__*,int ,int *) ;

__attribute__((used)) static void gz_reset(gz_statep state)
{
   state->x.have = 0;
   if (state->mode == GZ_READ) {
      state->eof = 0;
      state->past = 0;
      state->how = LOOK;
   }
   state->seek = 0;
   gz_error(state, Z_OK, ((void*)0));
   state->x.pos = 0;
   state->strm.avail_in = 0;
}
