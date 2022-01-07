
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int _getopt_internal (int,char* const*,char const*,struct option const*,int*,int) ;

int getopt_long_only( int argc, char* const * argv,
    const char* shortopts, const struct option* longopts, int* longind ){
    return _getopt_internal (argc, argv, shortopts, longopts, longind, 1);
}
