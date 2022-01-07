
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sval; } ;
typedef TYPE_1__ Token ;


 int expect_newline () ;
 int macros ;
 int map_remove (int ,int ) ;
 TYPE_1__* read_ident () ;

__attribute__((used)) static void read_undef() {
    Token *name = read_ident();
    expect_newline();
    map_remove(macros, name->sval);
}
