
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* gen_buf ;
 int gen_defs () ;
 int gen_foreign_headers () ;
 int gen_foreign_sources () ;
 int gen_forward_decls () ;
 int gen_postamble () ;
 int gen_preamble () ;
 int gen_sorted_decls () ;
 int gen_typeinfos () ;
 int genf (char*,char*) ;
 int genln () ;
 int preprocess_packages () ;

void gen_all(void) {
    preprocess_packages();
    gen_buf = ((void*)0);
    gen_foreign_headers();
    genln();
    gen_forward_decls();
    genln();
    gen_sorted_decls();
    gen_typeinfos();
    gen_defs();
    gen_foreign_sources();
    genln();
    gen_postamble();
    char *buf = gen_buf;
    gen_buf = ((void*)0);
    gen_preamble();
    genf("%s", buf);
}
