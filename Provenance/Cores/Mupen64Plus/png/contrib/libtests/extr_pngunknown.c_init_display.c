
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* program; char const* file; int test; scalar_t__ warning_count; scalar_t__ error_count; int * end_ptr; int info_ptr; int * png_ptr; } ;
typedef TYPE_1__ display ;


 int init ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
init_display(display *d, const char *program)
{
   memset(d, 0, sizeof *d);
   d->png_ptr = ((void*)0);
   d->info_ptr = d->end_ptr = ((void*)0);
   d->error_count = d->warning_count = 0;
   d->program = program;
   d->file = program;
   d->test = init;
}
