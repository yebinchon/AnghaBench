
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline bool _str_null_or_empty(const char * str){
    return (str == ((void*)0) || *str == 0);
}
