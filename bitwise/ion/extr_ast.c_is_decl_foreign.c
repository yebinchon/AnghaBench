
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Decl ;


 int foreign_name ;
 int * get_decl_note (int *,int ) ;

bool is_decl_foreign(Decl *decl) {
    return decl && get_decl_note(decl, foreign_name) != ((void*)0);
}
