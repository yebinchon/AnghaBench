
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bool_; } ;
struct rmsgpack_dom_value {scalar_t__ type; TYPE_1__ val; } ;
struct argument {int dummy; } ;


 scalar_t__ RDT_BOOL ;

__attribute__((used)) static struct rmsgpack_dom_value query_func_is_true(
      struct rmsgpack_dom_value input,
      unsigned argc, const struct argument *argv)
{
   struct rmsgpack_dom_value res;

   res.type = RDT_BOOL;
   res.val.bool_ = 0;

   if (argc > 0 || input.type != RDT_BOOL)
      res.val.bool_ = 0;
   else
      res.val.bool_ = input.val.bool_;

   return res;
}
