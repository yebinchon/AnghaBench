
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;


 char KHASHHASH ;
 int * make_keyword (char) ;
 scalar_t__ next (char) ;
 int unreadc (char) ;

__attribute__((used)) static Token *read_hash_digraph() {
    if (next('>'))
        return make_keyword('}');
    if (next(':')) {
        if (next('%')) {
            if (next(':'))
                return make_keyword(KHASHHASH);
            unreadc('%');
        }
        return make_keyword('#');
    }
    return ((void*)0);
}
