
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_keyword (char const*) ;
 int next_token () ;

bool match_keyword(const char *name) {
    if (is_keyword(name)) {
        next_token();
        return 1;
    } else {
        return 0;
    }
}
