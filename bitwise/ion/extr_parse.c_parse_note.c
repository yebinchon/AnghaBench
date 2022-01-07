
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos; } ;
typedef int SrcPos ;
typedef int NoteArg ;
typedef int Note ;


 int TOKEN_COMMA ;
 int TOKEN_LPAREN ;
 int TOKEN_RPAREN ;
 int buf_len (int *) ;
 int buf_push (int *,int ) ;
 int expect_token (int ) ;
 scalar_t__ match_token (int ) ;
 int new_note (int ,char const*,int *,int ) ;
 char* parse_name () ;
 int parse_note_arg () ;
 TYPE_1__ token ;

Note parse_note(void) {
    SrcPos pos = token.pos;
    const char *name = parse_name();
    NoteArg *args = ((void*)0);
    if (match_token(TOKEN_LPAREN)) {
        buf_push(args, parse_note_arg());
        while (match_token(TOKEN_COMMA)) {
            buf_push(args, parse_note_arg());
        }
        expect_token(TOKEN_RPAREN);
    }
    return new_note(pos, name, args, buf_len(args));
}
