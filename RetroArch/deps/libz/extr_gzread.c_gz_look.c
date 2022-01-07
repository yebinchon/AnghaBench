
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* z_streamp ;
typedef TYPE_3__* gz_statep ;
struct TYPE_9__ {int have; unsigned char* next; } ;
struct TYPE_10__ {int avail_in; int* next_in; void* opaque; void* zfree; void* zalloc; } ;
struct TYPE_11__ {int size; unsigned char* in; int want; unsigned char* out; int direct; int eof; int how; TYPE_1__ x; TYPE_2__ strm; } ;


 int MODE_COPY ;
 int MODE_GZIP ;
 int Z_MEM_ERROR ;
 void* Z_NULL ;
 scalar_t__ Z_OK ;
 int free (unsigned char*) ;
 int gz_avail (TYPE_3__*) ;
 int gz_error (TYPE_3__*,int ,char*) ;
 scalar_t__ inflateInit2 (TYPE_2__*,int) ;
 int inflateReset (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int memcpy (unsigned char*,int*,int) ;

__attribute__((used)) static int gz_look(gz_statep state)
{
   z_streamp strm = &(state->strm);


   if (state->size == 0) {

      state->in = (unsigned char *)malloc(state->want);
      state->out = (unsigned char *)malloc(state->want << 1);
      if (state->in == ((void*)0) || state->out == ((void*)0)) {
         if (state->out != ((void*)0))
            free(state->out);
         if (state->in != ((void*)0))
            free(state->in);
         gz_error(state, Z_MEM_ERROR, "out of memory");
         return -1;
      }
      state->size = state->want;


      state->strm.zalloc = Z_NULL;
      state->strm.zfree = Z_NULL;
      state->strm.opaque = Z_NULL;
      state->strm.avail_in = 0;
      state->strm.next_in = Z_NULL;
      if (inflateInit2(&(state->strm), 15 + 16) != Z_OK) {
         free(state->out);
         free(state->in);
         state->size = 0;
         gz_error(state, Z_MEM_ERROR, "out of memory");
         return -1;
      }
   }


   if (strm->avail_in < 2) {
      if (gz_avail(state) == -1)
         return -1;
      if (strm->avail_in == 0)
         return 0;
   }
   if (strm->avail_in > 1 &&
         strm->next_in[0] == 31 && strm->next_in[1] == 139) {
      inflateReset(strm);
      state->how = MODE_GZIP;
      state->direct = 0;
      return 0;
   }



   if (state->direct == 0) {
      strm->avail_in = 0;
      state->eof = 1;
      state->x.have = 0;
      return 0;
   }




   state->x.next = state->out;
   if (strm->avail_in) {
      memcpy(state->x.next, strm->next_in, strm->avail_in);
      state->x.have = strm->avail_in;
      strm->avail_in = 0;
   }
   state->how = MODE_COPY;
   state->direct = 1;
   return 0;
}
