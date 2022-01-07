
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eval_intexpr (int ,int *) ;
 int read_conditional_expr () ;

__attribute__((used)) static int read_intexpr() {
    return eval_intexpr(read_conditional_expr(), ((void*)0));
}
