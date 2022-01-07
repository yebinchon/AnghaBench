
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* z_streamp ;
typedef TYPE_3__* gz_statep ;
struct TYPE_8__ {unsigned int have; scalar_t__ next; } ;
struct TYPE_9__ {unsigned int avail_out; scalar_t__ avail_in; char* msg; scalar_t__ next_out; } ;
struct TYPE_10__ {int how; TYPE_1__ x; TYPE_2__ strm; } ;


 int LOOK ;
 int Z_BUF_ERROR ;
 int Z_DATA_ERROR ;
 int Z_MEM_ERROR ;
 int Z_NEED_DICT ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int Z_STREAM_ERROR ;
 int gz_avail (TYPE_3__*) ;
 int gz_error (TYPE_3__*,int,char*) ;
 int inflate (TYPE_2__*,int ) ;

__attribute__((used)) static int gz_decomp(gz_statep state)
{
   int ret = Z_OK;
   unsigned had;
   z_streamp strm = &(state->strm);


   had = strm->avail_out;
   do {

      if (strm->avail_in == 0 && gz_avail(state) == -1)
         return -1;
      if (strm->avail_in == 0) {
         gz_error(state, Z_BUF_ERROR, "unexpected end of file");
         break;
      }


      ret = inflate(strm, Z_NO_FLUSH);
      if (ret == Z_STREAM_ERROR || ret == Z_NEED_DICT) {
         gz_error(state, Z_STREAM_ERROR,
               "internal error: inflate stream corrupt");
         return -1;
      }
      if (ret == Z_MEM_ERROR) {
         gz_error(state, Z_MEM_ERROR, "out of memory");
         return -1;
      }
      if (ret == Z_DATA_ERROR) {
         gz_error(state, Z_DATA_ERROR,
               strm->msg == ((void*)0) ? "compressed data error" : strm->msg);
         return -1;
      }
   } while (strm->avail_out && ret != Z_STREAM_END);


   state->x.have = had - strm->avail_out;
   state->x.next = strm->next_out - state->x.have;


   if (ret == Z_STREAM_END)
      state->how = LOOK;


   return 0;
}
