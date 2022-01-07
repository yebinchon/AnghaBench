
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmsgpack_dom_value {int dummy; } ;
struct dom_reader_state {size_t i; struct rmsgpack_dom_value** stack; } ;



__attribute__((used)) static struct rmsgpack_dom_value *dom_reader_state_pop(struct dom_reader_state *s)
{
 struct rmsgpack_dom_value *v = s->stack[s->i];
 s->i--;
 return v;
}
