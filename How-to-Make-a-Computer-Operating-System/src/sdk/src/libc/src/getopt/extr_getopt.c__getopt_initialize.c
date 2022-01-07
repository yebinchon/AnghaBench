
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _getopt_data {int __posixly_correct; int __nonoption_flags_max_len; int __nonoption_flags_len; void* __ordering; int * __nextchar; int optind; int __last_nonopt; int __first_nonopt; } ;


 void* PERMUTE ;
 void* REQUIRE_ORDER ;
 void* RETURN_IN_ORDER ;
 char* __getopt_nonoption_flags ;
 int __libc_argc ;
 char* const* __libc_argv ;
 int __mempcpy (char*,char const*,int) ;
 int getenv (char*) ;
 scalar_t__ malloc (int) ;
 int memset (int ,char,int) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *
_getopt_initialize (int argc, char *const *argv, const char *optstring,
      struct _getopt_data *d)
{




  d->__first_nonopt = d->__last_nonopt = d->optind;

  d->__nextchar = ((void*)0);

  d->__posixly_correct = !!getenv ("POSIXLY_CORRECT");



  if (optstring[0] == '-')
    {
      d->__ordering = RETURN_IN_ORDER;
      ++optstring;
    }
  else if (optstring[0] == '+')
    {
      d->__ordering = REQUIRE_ORDER;
      ++optstring;
    }
  else if (d->__posixly_correct)
    d->__ordering = REQUIRE_ORDER;
  else
    d->__ordering = PERMUTE;
  return optstring;
}
