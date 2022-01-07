
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* z_streamp ;
typedef char* voidp ;
typedef TYPE_3__* gz_statep ;
typedef int * gzFile ;
struct TYPE_9__ {int have; unsigned int next; unsigned int pos; } ;
struct TYPE_10__ {scalar_t__ avail_in; unsigned int avail_out; unsigned char* next_out; } ;
struct TYPE_11__ {scalar_t__ mode; scalar_t__ err; int past; scalar_t__ how; int size; TYPE_1__ x; scalar_t__ eof; int skip; scalar_t__ seek; TYPE_2__ strm; } ;


 scalar_t__ GZ_READ ;
 scalar_t__ LOOK ;
 scalar_t__ MODE_COPY ;
 scalar_t__ Z_BUF_ERROR ;
 int Z_DATA_ERROR ;
 scalar_t__ Z_OK ;
 int gz_decomp (TYPE_3__*) ;
 int gz_error (TYPE_3__*,int ,char*) ;
 int gz_fetch (TYPE_3__*) ;
 int gz_load (TYPE_3__*,unsigned char*,unsigned int,unsigned int*) ;
 int gz_skip (TYPE_3__*,int ) ;
 int memcpy (char*,unsigned int,unsigned int) ;

int gzread(gzFile file, voidp buf, unsigned len)
{
   unsigned got, n;
   gz_statep state;
   z_streamp strm;


   if (file == ((void*)0))
      return -1;
   state = (gz_statep)file;
   strm = &(state->strm);


   if (state->mode != GZ_READ ||
         (state->err != Z_OK && state->err != Z_BUF_ERROR))
      return -1;



   if ((int)len < 0) {
      gz_error(state, Z_DATA_ERROR, "requested length does not fit in int");
      return -1;
   }


   if (len == 0)
      return 0;


   if (state->seek) {
      state->seek = 0;
      if (gz_skip(state, state->skip) == -1)
         return -1;
   }


   got = 0;
   n = 0;
   do {

      if (state->x.have) {
         n = state->x.have > len ? len : state->x.have;
         memcpy(buf, state->x.next, n);
         state->x.next += n;
         state->x.have -= n;
      }


      else if (state->eof && strm->avail_in == 0) {
         state->past = 1;
         break;
      }



      else if (state->how == LOOK || len < (state->size << 1)) {

         if (gz_fetch(state) == -1)
            return -1;
         continue;


      }


      else if (state->how == MODE_COPY) {
         if (gz_load(state, (unsigned char *)buf, len, &n) == -1)
            return -1;
      }


      else {
         strm->avail_out = len;
         strm->next_out = (unsigned char *)buf;
         if (gz_decomp(state) == -1)
            return -1;
         n = state->x.have;
         state->x.have = 0;
      }


      len -= n;
      buf = (char *)buf + n;
      got += n;
      state->x.pos += n;
   } while (len);


   return (int)got;
}
