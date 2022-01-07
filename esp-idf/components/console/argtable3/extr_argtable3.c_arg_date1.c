
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_date {int dummy; } ;


 struct arg_date* arg_daten (char const*,char const*,char const*,char const*,int,int,char const*) ;

struct arg_date * arg_date1(
    const char * shortopts,
    const char * longopts,
    const char * format,
    const char *datatype,
    const char *glossary)
{
    return arg_daten(shortopts, longopts, format, datatype, 1, 1, glossary);
}
