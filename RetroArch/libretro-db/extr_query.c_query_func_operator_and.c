
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bool_; } ;
struct rmsgpack_dom_value {TYPE_3__ val; int type; } ;
struct TYPE_4__ {int argv; int argc; int (* func ) (struct rmsgpack_dom_value,int ,int ) ;} ;
struct TYPE_5__ {TYPE_1__ invocation; } ;
struct argument {scalar_t__ type; TYPE_2__ a; } ;


 scalar_t__ AT_VALUE ;
 int RDT_BOOL ;
 struct rmsgpack_dom_value func_equals (struct rmsgpack_dom_value,int,struct argument const*) ;
 struct rmsgpack_dom_value query_func_is_true (int ,int ,int *) ;
 int stub1 (struct rmsgpack_dom_value,int ,int ) ;

__attribute__((used)) static struct rmsgpack_dom_value query_func_operator_and(
      struct rmsgpack_dom_value input,
      unsigned argc, const struct argument * argv)
{
   unsigned i;
   struct rmsgpack_dom_value res;

   res.type = RDT_BOOL;
   res.val.bool_ = 0;

   for (i = 0; i < argc; i++)
   {
      if (argv[i].type == AT_VALUE)
         res = func_equals(input, 1, &argv[i]);
      else
      {
         res = query_func_is_true(
               argv[i].a.invocation.func(input,
                  argv[i].a.invocation.argc,
                  argv[i].a.invocation.argv
                  ),
               0, ((void*)0));
      }

      if (!res.val.bool_)
         return res;
   }
   return res;
}
