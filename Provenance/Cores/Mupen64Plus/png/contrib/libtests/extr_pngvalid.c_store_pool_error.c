
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_store ;
typedef int * png_const_structp ;


 int png_error (int *,char const*) ;
 int store_log (int *,int *,char const*,int) ;

__attribute__((used)) static void
store_pool_error(png_store *ps, png_const_structp pp, const char *msg)
{
   if (pp != ((void*)0))
      png_error(pp, msg);





   store_log(ps, pp, msg, 1 );
}
