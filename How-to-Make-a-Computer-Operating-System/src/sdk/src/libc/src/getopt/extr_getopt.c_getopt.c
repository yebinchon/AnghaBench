
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int _getopt_internal (int,char* const*,char const*,struct option const*,int*,int ) ;

int getopt( int argc, char* const * argv, const char* optstring ) {
    return _getopt_internal( argc,
               argv,
               optstring,
               (const struct option *) 0,
               (int *) 0,
               0 );
}
