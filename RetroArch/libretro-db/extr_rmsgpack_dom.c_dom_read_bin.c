
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {char* buff; int len; } ;
struct TYPE_4__ {TYPE_1__ binary; } ;
struct rmsgpack_dom_value {TYPE_2__ val; int type; } ;
struct dom_reader_state {int dummy; } ;


 int RDT_BINARY ;
 scalar_t__ dom_reader_state_pop (struct dom_reader_state*) ;

__attribute__((used)) static int dom_read_bin(void *value, uint32_t len, void *data)
{
   struct dom_reader_state *dom_state = (struct dom_reader_state *)data;
   struct rmsgpack_dom_value *v =
      (struct rmsgpack_dom_value*)dom_reader_state_pop(dom_state);

   v->type = RDT_BINARY;
   v->val.binary.len = len;
   v->val.binary.buff = (char *)value;
   return 0;
}
