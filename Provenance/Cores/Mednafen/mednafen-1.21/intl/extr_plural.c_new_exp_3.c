
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expression {int dummy; } ;
typedef enum expression_operator { ____Placeholder_expression_operator } expression_operator ;


 struct expression* new_exp (int,int,struct expression**) ;

__attribute__((used)) static inline struct expression *
new_exp_3 (enum expression_operator op, struct expression *bexp,
    struct expression *tbranch, struct expression *fbranch)
{
  struct expression *args[3];

  args[0] = bexp;
  args[1] = tbranch;
  args[2] = fbranch;
  return new_exp (3, op, args);
}
