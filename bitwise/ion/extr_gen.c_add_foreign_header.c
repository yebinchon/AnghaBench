
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buf_push (int ,char const*) ;
 int gen_foreign_headers_buf ;
 int gen_foreign_headers_map ;
 int map_get (int *,char const*) ;
 int map_put (int *,char const*,void*) ;
 char* str_intern (char const*) ;

__attribute__((used)) static void add_foreign_header(const char *name) {
    name = str_intern(name);
    if (!map_get(&gen_foreign_headers_map, name)) {
        map_put(&gen_foreign_headers_map, name, (void *)1);
        buf_push(gen_foreign_headers_buf, name);
    }
}
