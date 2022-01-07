
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wastrue; int ctx; } ;
typedef TYPE_1__ CondIncl ;


 int IN_THEN ;
 TYPE_1__* calloc (int,int) ;

__attribute__((used)) static CondIncl *make_cond_incl(bool wastrue) {
    CondIncl *r = calloc(1, sizeof(CondIncl));
    r->ctx = IN_THEN;
    r->wastrue = wastrue;
    return r;
}
