
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct exception_context {int dummy; } ;
typedef int png_uint_32 ;
typedef int * png_structp ;
struct TYPE_10__ {int noptions; int * pread; int piread; TYPE_1__* options; struct exception_context exception_context; int read_memory_pool; int speed; int test; } ;
typedef TYPE_2__ png_store ;
typedef int * png_infopp ;
typedef int Throw ;
struct TYPE_9__ {int setting; int option; } ;


 int PNG_LIBPNG_VER_STRING ;
 scalar_t__ PNG_OPTION_INVALID ;
 int png_create_info_struct (int *) ;
 int * png_create_read_struct (int ,TYPE_2__*,int ,int ) ;
 int * png_create_read_struct_2 (int ,TYPE_2__*,int ,int ,int *,int ,int ) ;
 int png_error (int *,char*) ;
 scalar_t__ png_set_option (int *,int ,int ) ;
 int safecat (int ,int,int ,char const*) ;
 int store_error ;
 int store_free ;
 int store_log (TYPE_2__*,int *,char*,int) ;
 int store_malloc ;
 int store_read_reset (TYPE_2__*) ;
 int store_read_set (TYPE_2__*,int ) ;
 int store_warning ;

__attribute__((used)) static png_structp
set_store_for_read(png_store *ps, png_infopp ppi, png_uint_32 id,
   const char *name)
{

   safecat(ps->test, sizeof ps->test, 0, name);

   if (ps->pread != ((void*)0))
      png_error(ps->pread, "read store already in use");

   store_read_reset(ps);
   ps->pread = png_create_read_struct(PNG_LIBPNG_VER_STRING, ps, store_error,
      store_warning);

   if (ps->pread == ((void*)0))
   {
      struct exception_context *the_exception_context = &ps->exception_context;

      store_log(ps, ((void*)0), "png_create_read_struct returned NULL (unexpected)",
         1 );

      Throw ps;
   }
   store_read_set(ps, id);

   if (ppi != ((void*)0))
      *ppi = ps->piread = png_create_info_struct(ps->pread);

   return ps->pread;
}
