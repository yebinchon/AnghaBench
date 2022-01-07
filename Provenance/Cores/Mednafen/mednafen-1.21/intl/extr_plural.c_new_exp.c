
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct expression** args; } ;
struct expression {int nargs; int operation; TYPE_1__ val; } ;
typedef enum expression_operator { ____Placeholder_expression_operator } expression_operator ;


 int FREE_EXPRESSION (struct expression* const) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static struct expression *
new_exp (int nargs, enum expression_operator op,
  struct expression * const *args)
{
  int i;
  struct expression *newp;


  for (i = nargs - 1; i >= 0; i--)
    if (args[i] == ((void*)0))
      goto fail;


  newp = (struct expression *) malloc (sizeof (*newp));
  if (newp != ((void*)0))
    {
      newp->nargs = nargs;
      newp->operation = op;
      for (i = nargs - 1; i >= 0; i--)
 newp->val.args[i] = args[i];
      return newp;
    }

 fail:
  for (i = nargs - 1; i >= 0; i--)
    FREE_EXPRESSION (args[i]);

  return ((void*)0);
}
