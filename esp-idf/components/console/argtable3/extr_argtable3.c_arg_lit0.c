
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_lit {int dummy; } ;


 struct arg_lit* arg_litn (char const*,char const*,int ,int,char const*) ;

struct arg_lit * arg_lit0(
    const char * shortopts,
    const char * longopts,
    const char * glossary)
{
    return arg_litn(shortopts, longopts, 0, 1, glossary);
}
