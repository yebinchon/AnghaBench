
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int uint_; } ;
struct rmsgpack_dom_value {TYPE_1__ val; int type; } ;
struct dom_reader_state {int dummy; } ;


 int RDT_UINT ;
 scalar_t__ dom_reader_state_pop (struct dom_reader_state*) ;

__attribute__((used)) static int dom_read_uint(uint64_t value, void *data)
{
   struct dom_reader_state *dom_state = (struct dom_reader_state *)data;
   struct rmsgpack_dom_value *v =
      (struct rmsgpack_dom_value*)dom_reader_state_pop(dom_state);

   v->type = RDT_UINT;
   v->val.uint_ = value;
   return 0;
}
