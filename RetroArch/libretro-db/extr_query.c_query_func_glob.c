
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int buff; } ;
struct TYPE_12__ {int bool_; TYPE_5__ string; } ;
struct rmsgpack_dom_value {scalar_t__ type; TYPE_6__ val; } ;
struct TYPE_7__ {int buff; } ;
struct TYPE_8__ {TYPE_1__ string; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ val; } ;
struct TYPE_10__ {TYPE_3__ value; } ;
struct argument {scalar_t__ type; TYPE_4__ a; } ;


 scalar_t__ AT_VALUE ;
 scalar_t__ RDT_BOOL ;
 scalar_t__ RDT_STRING ;
 scalar_t__ rl_fnmatch (int ,int ,int ) ;

__attribute__((used)) static struct rmsgpack_dom_value query_func_glob(
      struct rmsgpack_dom_value input,
      unsigned argc, const struct argument * argv)
{
   struct rmsgpack_dom_value res;
   unsigned i = 0;

   res.type = RDT_BOOL;
   res.val.bool_ = 0;

   (void)i;

   if (argc != 1)
      return res;
   if (argv[0].type != AT_VALUE || argv[0].a.value.type != RDT_STRING)
      return res;
   if (input.type != RDT_STRING)
      return res;
   res.val.bool_ = rl_fnmatch(
         argv[0].a.value.val.string.buff,
         input.val.string.buff,
         0
         ) == 0;
   return res;
}
