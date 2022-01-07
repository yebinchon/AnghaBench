
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stub_state {size_t i; int* stack; } ;


 int printf (char*) ;

__attribute__((used)) static void stub_state_push_array(struct stub_state *s, uint32_t size)
{
 s->i++;
 s->stack[s->i] = 2;
 s->i++;
 s->stack[s->i] = size;
 printf("[");
}
