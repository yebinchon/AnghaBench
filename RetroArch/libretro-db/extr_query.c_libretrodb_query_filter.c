
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bool_; } ;
struct rmsgpack_dom_value {scalar_t__ type; TYPE_1__ val; } ;
struct invocation {int argv; int argc; struct rmsgpack_dom_value (* func ) (struct rmsgpack_dom_value,int ,int ) ;} ;
struct query {struct invocation root; } ;
typedef int libretrodb_query_t ;


 scalar_t__ RDT_BOOL ;
 struct rmsgpack_dom_value stub1 (struct rmsgpack_dom_value,int ,int ) ;

int libretrodb_query_filter(libretrodb_query_t *q,
      struct rmsgpack_dom_value *v)
{
   struct invocation inv = ((struct query *)q)->root;
   struct rmsgpack_dom_value res = inv.func(*v, inv.argc, inv.argv);
   return (res.type == RDT_BOOL && res.val.bool_);
}
