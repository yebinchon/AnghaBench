
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int argc; struct argument* argv; } ;
struct TYPE_3__ {TYPE_2__ invocation; int value; } ;
struct argument {scalar_t__ type; TYPE_1__ a; } ;


 scalar_t__ AT_FUNCTION ;
 int free (void*) ;
 int rmsgpack_dom_value_free (int *) ;

__attribute__((used)) static void query_argument_free(struct argument *arg)
{
   unsigned i;

   if (arg->type != AT_FUNCTION)
   {
      rmsgpack_dom_value_free(&arg->a.value);
      return;
   }

   for (i = 0; i < arg->a.invocation.argc; i++)
      query_argument_free(&arg->a.invocation.argv[i]);

   free((void*)arg->a.invocation.argv);
}
