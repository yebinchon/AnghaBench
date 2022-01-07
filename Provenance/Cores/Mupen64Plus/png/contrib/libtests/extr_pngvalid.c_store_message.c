
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char const* wname; scalar_t__* test; int * pwrite; TYPE_1__* current; int * pread; } ;
typedef TYPE_2__ png_store ;
typedef int * png_const_structp ;
struct TYPE_4__ {char const* name; } ;


 size_t safecat (char*,size_t,size_t,char const*) ;
 char const* sep ;

__attribute__((used)) static size_t
store_message(png_store *ps, png_const_structp pp, char *buffer, size_t bufsize,
   size_t pos, const char *msg)
{
   if (pp != ((void*)0) && pp == ps->pread)
   {

      pos = safecat(buffer, bufsize, pos, "read: ");

      if (ps->current != ((void*)0))
      {
         pos = safecat(buffer, bufsize, pos, ps->current->name);
         pos = safecat(buffer, bufsize, pos, sep);
      }
   }

   else if (pp != ((void*)0) && pp == ps->pwrite)
   {

      pos = safecat(buffer, bufsize, pos, "write: ");
      pos = safecat(buffer, bufsize, pos, ps->wname);
      pos = safecat(buffer, bufsize, pos, sep);
   }

   else
   {

      pos = safecat(buffer, bufsize, pos, "pngvalid: ");
   }

   if (ps->test[0] != 0)
   {
      pos = safecat(buffer, bufsize, pos, ps->test);
      pos = safecat(buffer, bufsize, pos, sep);
   }
   pos = safecat(buffer, bufsize, pos, msg);
   return pos;
}
