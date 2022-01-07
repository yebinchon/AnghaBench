
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;


 int * read_oldstyle_param_args () ;
 int update_oldstyle_param_type (int *,int *) ;

__attribute__((used)) static void read_oldstyle_param_type(Vector *params) {
    Vector *vars = read_oldstyle_param_args();
    update_oldstyle_param_type(params, vars);
}
