
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* declvar; int declinit; } ;
struct TYPE_6__ {int size; int isstatic; } ;
struct TYPE_5__ {TYPE_2__* ty; int glabel; } ;
typedef TYPE_3__ Node ;


 int SAVE ;
 int do_emit_data (int ,int ,int,int) ;
 int emit (char*,int) ;
 int emit_noindent (char*,int ) ;

__attribute__((used)) static void emit_data(Node *v, int off, int depth) {
    SAVE;
    emit(".data %d", depth);
    if (!v->declvar->ty->isstatic)
        emit_noindent(".global %s", v->declvar->glabel);
    emit_noindent("%s:", v->declvar->glabel);
    do_emit_data(v->declinit, v->declvar->ty->size, off, depth);
}
