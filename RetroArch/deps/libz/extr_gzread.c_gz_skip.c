
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ z_off64_t ;
typedef TYPE_3__* gz_statep ;
struct TYPE_6__ {scalar_t__ avail_in; } ;
struct TYPE_7__ {unsigned int have; unsigned int next; unsigned int pos; } ;
struct TYPE_8__ {TYPE_1__ strm; scalar_t__ eof; TYPE_2__ x; } ;


 scalar_t__ GT_OFF (unsigned int) ;
 int gz_fetch (TYPE_3__*) ;

__attribute__((used)) static int gz_skip(gz_statep state, z_off64_t len)
{
   unsigned n;


   while (len)

      if (state->x.have) {
         n = GT_OFF(state->x.have) || (z_off64_t)state->x.have > len ?
            (unsigned)len : state->x.have;
         state->x.have -= n;
         state->x.next += n;
         state->x.pos += n;
         len -= n;
      }


      else if (state->eof && state->strm.avail_in == 0)
         break;


      else {

         if (gz_fetch(state) == -1)
            return -1;
      }
   return 0;
}
