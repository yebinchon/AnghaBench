
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int saved; } ;
typedef TYPE_1__ png_store ;


 int store_freefile (int *) ;
 int store_image_free (TYPE_1__*,int *) ;
 int store_read_reset (TYPE_1__*) ;
 int store_write_reset (TYPE_1__*) ;

__attribute__((used)) static void
store_delete(png_store *ps)
{
   store_write_reset(ps);
   store_read_reset(ps);
   store_freefile(&ps->saved);
   store_image_free(ps, ((void*)0));
}
