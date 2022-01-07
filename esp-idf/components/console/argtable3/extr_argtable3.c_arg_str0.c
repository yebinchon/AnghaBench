
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_str {int dummy; } ;


 struct arg_str* arg_strn (char const*,char const*,char const*,int ,int,char const*) ;

struct arg_str * arg_str0(
    const char *shortopts,
    const char *longopts,
    const char *datatype,
    const char *glossary)
{
    return arg_strn(shortopts, longopts, datatype, 0, 1, glossary);
}
