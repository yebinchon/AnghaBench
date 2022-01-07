
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;


 int TSTRING ;
 int get_base_file () ;
 int make_token_pushback (int *,int ,int ) ;

__attribute__((used)) static void handle_base_file_macro(Token *tmpl) {
    make_token_pushback(tmpl, TSTRING, get_base_file());
}
