
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* first_keyword ;
 char const* last_keyword ;

bool is_keyword_name(const char *name) {
    return first_keyword <= name && name <= last_keyword;
}
