
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attack_method {int func; int vector; } ;
typedef int ATTACK_VECTOR ;
typedef int ATTACK_FUNC ;


 struct attack_method* calloc (int,int) ;
 struct attack_method** methods ;
 int methods_len ;
 struct attack_method** realloc (struct attack_method**,int) ;

__attribute__((used)) static void add_attack(ATTACK_VECTOR vector, ATTACK_FUNC func)
{
    struct attack_method *method = calloc(1, sizeof (struct attack_method));

    method->vector = vector;
    method->func = func;

    methods = realloc(methods, (methods_len + 1) * sizeof (struct attack_method *));
    methods[methods_len++] = method;
}
