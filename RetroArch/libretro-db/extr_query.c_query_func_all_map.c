
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int bool_; } ;
struct rmsgpack_dom_value {scalar_t__ type; TYPE_3__ val; } ;
struct TYPE_4__ {int argv; int argc; int (* func ) (struct rmsgpack_dom_value,int ,int ) ;} ;
struct TYPE_5__ {TYPE_1__ invocation; int value; } ;
struct argument {scalar_t__ type; TYPE_2__ a; } ;


 scalar_t__ AT_VALUE ;
 scalar_t__ RDT_BOOL ;
 scalar_t__ RDT_MAP ;
 scalar_t__ RDT_NULL ;
 struct rmsgpack_dom_value func_equals (struct rmsgpack_dom_value,int,struct argument*) ;
 struct rmsgpack_dom_value query_func_is_true (int ,int ,int *) ;
 struct rmsgpack_dom_value* rmsgpack_dom_value_map_value (struct rmsgpack_dom_value*,int *) ;
 int stub1 (struct rmsgpack_dom_value,int ,int ) ;

__attribute__((used)) static struct rmsgpack_dom_value query_func_all_map(
      struct rmsgpack_dom_value input,
      unsigned argc, const struct argument *argv)
{
   unsigned i;
   struct argument arg;
   struct rmsgpack_dom_value res;
   struct rmsgpack_dom_value nil_value;
   struct rmsgpack_dom_value *value = ((void*)0);

   res.type = RDT_BOOL;
   res.val.bool_ = 1;

   nil_value.type = RDT_NULL;

   if (argc % 2 != 0)
   {
      res.val.bool_ = 0;
      return res;
   }

   if (input.type != RDT_MAP)
      return res;

   for (i = 0; i < argc; i += 2)
   {
      arg = argv[i];
      if (arg.type != AT_VALUE)
      {
         res.val.bool_ = 0;
         goto clean;
      }
      value = rmsgpack_dom_value_map_value(&input, &arg.a.value);
      if (!value)
         value = &nil_value;
      arg = argv[i + 1];
      if (arg.type == AT_VALUE)
         res = func_equals(*value, 1, &arg);
      else
      {
         res = query_func_is_true(arg.a.invocation.func(
                  *value,
                  arg.a.invocation.argc,
                  arg.a.invocation.argv
                  ), 0, ((void*)0));
         value = ((void*)0);
      }
      if (!res.val.bool_)
         break;
   }
clean:
   return res;
}
