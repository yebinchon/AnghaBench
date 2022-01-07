
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ count; int column; int line; TYPE_2__* file; int * hideset; } ;
typedef TYPE_1__ Token ;
struct TYPE_10__ {int column; int line; } ;
struct TYPE_9__ {int ntok; } ;
typedef TYPE_2__ File ;


 TYPE_2__* current_file () ;
 TYPE_1__* malloc (int) ;
 TYPE_3__ pos ;

__attribute__((used)) static Token *make_token(Token *tmpl) {
    Token *r = malloc(sizeof(Token));
    *r = *tmpl;
    r->hideset = ((void*)0);
    File *f = current_file();
    r->file = f;
    r->line = pos.line;
    r->column = pos.column;
    r->count = f->ntok++;
    return r;
}
