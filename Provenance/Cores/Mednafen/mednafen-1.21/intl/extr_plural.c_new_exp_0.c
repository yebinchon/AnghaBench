
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expression {int dummy; } ;
typedef enum expression_operator { ____Placeholder_expression_operator } expression_operator ;


 struct expression* new_exp (int ,int,int *) ;

__attribute__((used)) static inline struct expression *
new_exp_0 (enum expression_operator op)
{
  return new_exp (0, op, ((void*)0));
}
