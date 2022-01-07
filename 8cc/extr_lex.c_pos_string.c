
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {int column; int line; } ;
typedef TYPE_1__ Pos ;
typedef TYPE_2__ File ;


 TYPE_2__* current_file () ;
 char* format (char*,char*,int ,int ) ;

__attribute__((used)) static char *pos_string(Pos *p) {
    File *f = current_file();
    return format("%s:%d:%d", f ? f->name : "(unknown)", p->line, p->column);
}
