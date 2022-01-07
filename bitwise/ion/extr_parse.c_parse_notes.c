
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Notes ;
typedef int Note ;


 int TOKEN_AT ;
 int buf_len (int *) ;
 int buf_push (int *,int ) ;
 scalar_t__ match_token (int ) ;
 int new_notes (int *,int ) ;
 int parse_note () ;

Notes parse_notes(void) {
    Note *notes = ((void*)0);
    while (match_token(TOKEN_AT)) {
        buf_push(notes, parse_note());
    }
    return new_notes(notes, buf_len(notes));
}
