
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* gz_statep ;
typedef int * gzFile ;
struct TYPE_5__ {unsigned int have; unsigned char* next; unsigned int pos; } ;
struct TYPE_6__ {scalar_t__ mode; scalar_t__ err; int past; TYPE_1__ x; int skip; scalar_t__ seek; } ;


 scalar_t__ GZ_READ ;
 scalar_t__ Z_BUF_ERROR ;
 scalar_t__ Z_OK ;
 int gz_fetch (TYPE_2__*) ;
 int gz_skip (TYPE_2__*,int ) ;
 scalar_t__ memchr (unsigned char*,char,unsigned int) ;
 int memcpy (char*,unsigned char*,unsigned int) ;

char * gzgets(gzFile file, char *buf, int len)
{
   unsigned left, n;
   char *str;
   unsigned char *eol;
   gz_statep state;


   if (file == ((void*)0) || buf == ((void*)0) || len < 1)
      return ((void*)0);
   state = (gz_statep)file;


   if (state->mode != GZ_READ ||
         (state->err != Z_OK && state->err != Z_BUF_ERROR))
      return ((void*)0);


   if (state->seek) {
      state->seek = 0;
      if (gz_skip(state, state->skip) == -1)
         return ((void*)0);
   }




   str = buf;
   left = (unsigned)len - 1;
   if (left) do {

      if (state->x.have == 0 && gz_fetch(state) == -1)
         return ((void*)0);
      if (state->x.have == 0) {
         state->past = 1;
         break;
      }


      n = state->x.have > left ? left : state->x.have;
      eol = (unsigned char *)memchr(state->x.next, '\n', n);
      if (eol != ((void*)0))
         n = (unsigned)(eol - state->x.next) + 1;


      memcpy(buf, state->x.next, n);
      state->x.have -= n;
      state->x.next += n;
      state->x.pos += n;
      left -= n;
      buf += n;
   } while (left && eol == ((void*)0));


   if (buf == str)
      return ((void*)0);
   buf[0] = 0;
   return str;
}
