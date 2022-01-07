
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nerrors; scalar_t__ nwarnings; scalar_t__ treat_warnings_as_errors; int verbose; } ;
struct TYPE_5__ {TYPE_1__ this; int log; } ;
typedef TYPE_2__ png_modifier ;



__attribute__((used)) static int fail(png_modifier *pm)
{
   return !pm->log && !pm->this.verbose && (pm->this.nerrors > 0 ||
       (pm->this.treat_warnings_as_errors && pm->this.nwarnings > 0));
}
