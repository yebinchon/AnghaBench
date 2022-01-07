
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int line; TYPE_1__* file; } ;
typedef TYPE_2__ Token ;
struct TYPE_8__ {int line; int file; } ;
struct TYPE_6__ {int name; } ;
typedef int SourceLoc ;


 TYPE_3__* malloc (int) ;
 TYPE_2__* peek () ;
 TYPE_3__* source_loc ;

__attribute__((used)) static void mark_location() {
    Token *tok = peek();
    source_loc = malloc(sizeof(SourceLoc));
    source_loc->file = tok->file->name;
    source_loc->line = tok->line;
}
