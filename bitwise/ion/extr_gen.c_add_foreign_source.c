
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf_push (int ,int ) ;
 int gen_foreign_sources_buf ;
 int str_intern (char const*) ;

__attribute__((used)) static void add_foreign_source(const char *name) {
    buf_push(gen_foreign_sources_buf, str_intern(name));
}
