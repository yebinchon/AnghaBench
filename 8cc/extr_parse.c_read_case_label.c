
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;
typedef int Node ;


 int KELLIPSIS ;
 int ast_dest (char*) ;
 int cases ;
 int check_case_duplicates (int ) ;
 int errort (int *,char*,...) ;
 int expect (char) ;
 int make_case (int,int,char*) ;
 char* make_label () ;
 scalar_t__ next_token (int ) ;
 int read_intexpr () ;
 int * read_label_tail (int ) ;
 int vec_push (int ,int ) ;

__attribute__((used)) static Node *read_case_label(Token *tok) {
    if (!cases)
        errort(tok, "stray case label");
    char *label = make_label();
    int beg = read_intexpr();
    if (next_token(KELLIPSIS)) {
        int end = read_intexpr();
        expect(':');
        if (beg > end)
            errort(tok, "case region is not in correct order: %d ... %d", beg, end);
        vec_push(cases, make_case(beg, end, label));
    } else {
        expect(':');
        vec_push(cases, make_case(beg, beg, label));
    }
    check_case_duplicates(cases);
    return read_label_tail(ast_dest(label));
}
