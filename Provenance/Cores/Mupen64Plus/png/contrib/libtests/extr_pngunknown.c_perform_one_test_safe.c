
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int png_uint_32 ;
struct TYPE_4__ {char const* test; int error_return; } ;
typedef TYPE_1__ display ;
typedef int FILE ;


 char const* init ;
 int perform_one_test (int *,int,char const**,int *,TYPE_1__*,int) ;
 scalar_t__ setjmp (int ) ;

__attribute__((used)) static void
perform_one_test_safe(FILE *fp, int argc, const char **argv,
   png_uint_32 *default_flags, display *d, const char *test)
{
   if (setjmp(d->error_return) == 0)
   {
      d->test = test;






      d->test = init;
   }
}
