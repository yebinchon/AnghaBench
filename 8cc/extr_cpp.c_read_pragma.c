
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;


 int parse_pragma_operand (int *) ;
 int * read_ident () ;

__attribute__((used)) static void read_pragma() {
    Token *tok = read_ident();
    parse_pragma_operand(tok);
}
