
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_rex {int dummy; } ;


 struct arg_rex* arg_rexn (char const*,char const*,char const*,char const*,int ,int,int,char const*) ;

struct arg_rex * arg_rex0(const char * shortopts,
                          const char * longopts,
                          const char * pattern,
                          const char *datatype,
                          int flags,
                          const char *glossary)
{
    return arg_rexn(shortopts,
                    longopts,
                    pattern,
                    datatype,
                    0,
                    1,
                    flags,
                    glossary);
}
