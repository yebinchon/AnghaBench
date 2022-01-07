
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int notes; } ;
typedef int Notes ;
typedef TYPE_1__ Decl ;


 int fatal_error_here (char*,int ) ;
 TYPE_1__* parse_decl_opt () ;
 int parse_notes () ;
 int token_info () ;

Decl *parse_decl(void) {
    Notes notes = parse_notes();
    Decl *decl = parse_decl_opt();
    if (!decl) {
        fatal_error_here("Expected declaration keyword, got %s", token_info());
    }
    decl->notes = notes;
    return decl;
}
