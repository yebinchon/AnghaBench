
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct option {int dummy; } ;
struct TYPE_3__ {int optopt; int optarg; int optind; int opterr; } ;


 int _getopt_internal_r (int,char* const*,char const*,struct option const*,int*,int,TYPE_1__*) ;
 TYPE_1__ getopt_data ;
 int optarg ;
 int opterr ;
 int optind ;
 int optopt ;

int _getopt_internal ( int argc, char *const *argv, const char *optstring,
          const struct option *longopts, int *longind, int long_only ) {
    int result;

    getopt_data.optind = optind;
    getopt_data.opterr = opterr;

    result = _getopt_internal_r (argc, argv, optstring, longopts,
                longind, long_only, &getopt_data);

    optind = getopt_data.optind;
    optarg = getopt_data.optarg;
    optopt = getopt_data.optopt;

    return result;
}
