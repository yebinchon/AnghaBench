
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nerrors; scalar_t__ verbose; int error; int nwarnings; } ;
typedef TYPE_1__ png_store ;
typedef int png_const_structp ;
typedef int png_const_charp ;


 int store_message (TYPE_1__*,int ,int ,int,int ,int ) ;
 int store_verbose (TYPE_1__*,int ,char*,int ) ;

__attribute__((used)) static void
store_log(png_store* ps, png_const_structp pp, png_const_charp message,
   int is_error)
{




   if (is_error ? (ps->nerrors)++ == 0 :
       (ps->nwarnings)++ == 0 && ps->nerrors == 0)
      store_message(ps, pp, ps->error, sizeof ps->error, 0, message);

   if (ps->verbose)
      store_verbose(ps, pp, is_error ? "error: " : "warning: ", message);
}
