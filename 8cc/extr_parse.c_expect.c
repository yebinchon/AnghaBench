
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;


 int errort (int *,char*,char,int ) ;
 int * get () ;
 int is_keyword (int *,char) ;
 int tok2s (int *) ;

__attribute__((used)) static void expect(char id) {
    Token *tok = get();
    if (!is_keyword(tok, id))
        errort(tok, "'%c' expected, but got %s", id, tok2s(tok));
}
