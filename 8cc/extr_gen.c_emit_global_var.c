
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ declinit; } ;
typedef TYPE_1__ Node ;


 int SAVE ;
 int emit_bss (TYPE_1__*) ;
 int emit_data (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void emit_global_var(Node *v) {
    SAVE;
    if (v->declinit)
        emit_data(v, 0, 0);
    else
        emit_bss(v);
}
