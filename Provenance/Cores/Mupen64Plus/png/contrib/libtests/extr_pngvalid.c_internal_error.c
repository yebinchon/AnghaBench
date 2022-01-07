
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct exception_context {int dummy; } ;
struct TYPE_4__ {struct exception_context exception_context; } ;
typedef TYPE_1__ png_store ;
typedef int png_const_charp ;
typedef int Throw ;


 int store_log (TYPE_1__*,int *,int ,int) ;

__attribute__((used)) static void
internal_error(png_store *ps, png_const_charp message)
{
   store_log(ps, ((void*)0), message, 1 );


   {
      struct exception_context *the_exception_context = &ps->exception_context;
      Throw ps;
   }
}
