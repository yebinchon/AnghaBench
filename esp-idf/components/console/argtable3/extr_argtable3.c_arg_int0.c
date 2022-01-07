
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_int {int dummy; } ;


 struct arg_int* arg_intn (char const*,char const*,char const*,int ,int,char const*) ;

struct arg_int * arg_int0(
    const char *shortopts,
    const char *longopts,
    const char *datatype,
    const char *glossary)
{
    return arg_intn(shortopts, longopts, datatype, 0, 1, glossary);
}
