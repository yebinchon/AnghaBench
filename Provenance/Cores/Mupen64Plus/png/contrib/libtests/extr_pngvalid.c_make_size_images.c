
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int test; } ;
typedef TYPE_1__ png_store ;


 int WRITE_BDHI ;
 int make_size (TYPE_1__*,int,int,int) ;
 int safecat (int ,int,int ,char*) ;

__attribute__((used)) static void
make_size_images(png_store *ps)
{

   safecat(ps->test, sizeof ps->test, 0, "make size images");



   make_size(ps, 0, 0, WRITE_BDHI);
   make_size(ps, 2, 3, WRITE_BDHI);
   make_size(ps, 3, 0, 3 );
   make_size(ps, 4, 3, WRITE_BDHI);
   make_size(ps, 6, 3, WRITE_BDHI);
}
