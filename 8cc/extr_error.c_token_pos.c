
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int column; int line; TYPE_2__* file; } ;
typedef TYPE_1__ Token ;
struct TYPE_5__ {char* name; } ;
typedef TYPE_2__ File ;


 char* format (char*,char*,int ,int ) ;

char *token_pos(Token *tok) {
    File *f = tok->file;
    if (!f)
        return "(unknown)";
    char *name = f->name ? f->name : "(unknown)";
    return format("%s:%d:%d", name, tok->line, tok->column);
}
