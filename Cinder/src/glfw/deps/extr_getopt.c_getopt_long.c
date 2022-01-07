
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* const name; int* flag; int val; scalar_t__ has_arg; } ;


 int getopt (int,char* const*,char const*) ;
 scalar_t__ no_argument ;
 char* optarg ;
 int optind ;
 scalar_t__ optopt ;
 scalar_t__ required_argument ;
 char* strchr (char* const,char) ;
 size_t strcspn (char const*,char*) ;
 int strlen (char* const) ;
 scalar_t__ strncmp (char* const,char const*,size_t) ;

int getopt_long(int argc, char* const argv[], const char* optstring,
  const struct option* longopts, int* longindex) {
  const struct option* o = longopts;
  const struct option* match = ((void*)0);
  int num_matches = 0;
  size_t argument_name_length = 0;
  const char* current_argument = ((void*)0);
  int retval = -1;

  optarg = ((void*)0);
  optopt = 0;

  if (optind >= argc)
    return -1;

  if (strlen(argv[optind]) < 3 || strncmp(argv[optind], "--", 2) != 0)
    return getopt(argc, argv, optstring);


  current_argument = argv[optind] + 2;
  argument_name_length = strcspn(current_argument, "=");
  for (; o->name; ++o) {
    if (strncmp(o->name, current_argument, argument_name_length) == 0) {
      match = o;
      ++num_matches;
    }
  }

  if (num_matches == 1) {


    if (longindex)
      *longindex = (int) (match - longopts);





    if (match->flag)
      *(match->flag) = match->val;

    retval = match->flag ? 0 : match->val;

    if (match->has_arg != no_argument) {
      optarg = strchr(argv[optind], '=');
      if (optarg != ((void*)0))
        ++optarg;

      if (match->has_arg == required_argument) {


        if (optarg == ((void*)0) && ++optind < argc) {
          optarg = argv[optind];
        }

        if (optarg == ((void*)0))
          retval = ':';
      }
    } else if (strchr(argv[optind], '=')) {




      retval = '?';
    }
  } else {

    retval = '?';
  }

  ++optind;
  return retval;
}
