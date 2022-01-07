
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; scalar_t__ space; scalar_t__ bol; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TEOF ;
 int exit (int ) ;
 int printf (char*,...) ;
 TYPE_1__* read_token () ;
 char* tok2s (TYPE_1__*) ;

__attribute__((used)) static void preprocess() {
    for (;;) {
        Token *tok = read_token();
        if (tok->kind == TEOF)
            break;
        if (tok->bol)
            printf("\n");
        if (tok->space)
            printf(" ");
        printf("%s", tok2s(tok));
    }
    printf("\n");
    exit(0);
}
