
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cond_incl_stack ;
 int make_cond_incl (int) ;
 int skip_cond_incl () ;
 int vec_push (int ,int ) ;

__attribute__((used)) static void do_read_if(bool istrue) {
    vec_push(cond_incl_stack, make_cond_incl(istrue));
    if (!istrue)
        skip_cond_incl();
}
