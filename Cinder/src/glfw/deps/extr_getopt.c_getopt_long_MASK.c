#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct option {char* const name; int* flag; int val; scalar_t__ has_arg; } ;

/* Variables and functions */
 int FUNC0 (int,char* const*,char const*) ; 
 scalar_t__ no_argument ; 
 char* optarg ; 
 int optind ; 
 scalar_t__ optopt ; 
 scalar_t__ required_argument ; 
 char* FUNC1 (char* const,char) ; 
 size_t FUNC2 (char const*,char*) ; 
 int FUNC3 (char* const) ; 
 scalar_t__ FUNC4 (char* const,char const*,size_t) ; 

int FUNC5(int argc, char* const argv[], const char* optstring,
  const struct option* longopts, int* longindex) {
  const struct option* o = longopts;
  const struct option* match = NULL;
  int num_matches = 0;
  size_t argument_name_length = 0;
  const char* current_argument = NULL;
  int retval = -1;

  optarg = NULL;
  optopt = 0;

  if (optind >= argc)
    return -1;

  if (FUNC3(argv[optind]) < 3 || FUNC4(argv[optind], "--", 2) != 0)
    return FUNC0(argc, argv, optstring);

  /* It's an option; starts with -- and is longer than two chars. */
  current_argument = argv[optind] + 2;
  argument_name_length = FUNC2(current_argument, "=");
  for (; o->name; ++o) {
    if (FUNC4(o->name, current_argument, argument_name_length) == 0) {
      match = o;
      ++num_matches;
    }
  }

  if (num_matches == 1) {
    /* If longindex is not NULL, it points to a variable which is set to the
       index of the long option relative to longopts. */
    if (longindex)
      *longindex = (int) (match - longopts);

    /* If flag is NULL, then getopt_long() shall return val.
       Otherwise, getopt_long() returns 0, and flag shall point to a variable
       which shall be set to val if the option is found, but left unchanged if
       the option is not found. */
    if (match->flag)
      *(match->flag) = match->val;

    retval = match->flag ? 0 : match->val;

    if (match->has_arg != no_argument) {
      optarg = FUNC1(argv[optind], '=');
      if (optarg != NULL)
        ++optarg;

      if (match->has_arg == required_argument) {
        /* Only scan the next argv for required arguments. Behavior is not
           specified, but has been observed with Ubuntu and Mac OSX. */
        if (optarg == NULL && ++optind < argc) {
          optarg = argv[optind];
        }

        if (optarg == NULL)
          retval = ':';
      }
    } else if (FUNC1(argv[optind], '=')) {
      /* An argument was provided to a non-argument option.
         I haven't seen this specified explicitly, but both GNU and BSD-based
         implementations show this behavior.
      */
      retval = '?';
    }
  } else {
    /* Unknown option or ambiguous match. */
    retval = '?';
  }

  ++optind;
  return retval;
}