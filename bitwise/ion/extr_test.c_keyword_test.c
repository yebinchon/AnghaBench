
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 char const** buf_end (char**) ;
 char const* first_keyword ;
 int init_keywords () ;
 int is_keyword_name (char const*) ;
 char** keywords ;
 char const* last_keyword ;
 char const* str_intern (char*) ;

void keyword_test(void) {
    init_keywords();
    assert(is_keyword_name(first_keyword));
    assert(is_keyword_name(last_keyword));
    for (const char **it = keywords; it != buf_end(keywords); it++) {
        assert(is_keyword_name(*it));
    }
    assert(!is_keyword_name(str_intern("foo")));
}
