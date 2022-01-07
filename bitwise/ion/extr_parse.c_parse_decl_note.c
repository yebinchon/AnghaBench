
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SrcPos ;
typedef int Decl ;


 int * new_decl_note (int ,int ) ;
 int parse_note () ;

Decl *parse_decl_note(SrcPos pos) {
    return new_decl_note(pos, parse_note());
}
