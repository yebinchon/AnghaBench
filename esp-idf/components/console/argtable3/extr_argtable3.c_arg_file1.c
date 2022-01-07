
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_file {int dummy; } ;


 struct arg_file* arg_filen (char const*,char const*,char const*,int,int,char const*) ;

struct arg_file * arg_file1(
    const char * shortopts,
    const char * longopts,
    const char *datatype,
    const char *glossary)
{
    return arg_filen(shortopts, longopts, datatype, 1, 1, glossary);
}
