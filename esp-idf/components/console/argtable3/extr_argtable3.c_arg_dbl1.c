
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_dbl {int dummy; } ;


 struct arg_dbl* arg_dbln (char const*,char const*,char const*,int,int,char const*) ;

struct arg_dbl * arg_dbl1(
    const char * shortopts,
    const char * longopts,
    const char *datatype,
    const char *glossary)
{
    return arg_dbln(shortopts, longopts, datatype, 1, 1, glossary);
}
