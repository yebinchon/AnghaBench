
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmsgpack_dom_value {int type; } ;
struct dom_reader_state {int dummy; } ;


 int RDT_NULL ;
 scalar_t__ dom_reader_state_pop (struct dom_reader_state*) ;

__attribute__((used)) static int dom_read_nil(void *data)
{
   struct dom_reader_state *dom_state = (struct dom_reader_state *)data;
   struct rmsgpack_dom_value *v =
      (struct rmsgpack_dom_value*)dom_reader_state_pop(dom_state);
   v->type = RDT_NULL;
   return 0;
}
