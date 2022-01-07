
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Decl ;


 int * get_decl_note (int *,int ) ;
 int str_intern (char*) ;

bool is_decl_threadlocal(Decl *decl) {
    return decl && get_decl_note(decl, str_intern("threadlocal")) != ((void*)0);
}
