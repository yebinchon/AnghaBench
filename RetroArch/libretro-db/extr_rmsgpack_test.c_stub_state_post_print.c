
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stub_state {int* stack; int i; } ;


 int printf (char*) ;

__attribute__((used)) static void stub_state_post_print(struct stub_state *s)
{
   switch (s->stack[s->i - 1])
   {
      case 1:
         if (s->stack[s->i] % 2 == 0)
         {
            printf(": ");
            s->stack[s->i]--;
         }
         else if (s->stack[s->i] == 1)
         {
            printf("}");
            s->i -= 2;
            stub_state_post_print(s);
         }
         else
         {
            printf(", ");
            s->stack[s->i]--;
         }
         break;
      case 2:
         if (s->stack[s->i] == 1)
         {
            printf("]");
            s->i -= 2;
            stub_state_post_print(s);
         }
         else
         {
            printf(", ");
            s->stack[s->i]--;
         }
         break;
   }
}
