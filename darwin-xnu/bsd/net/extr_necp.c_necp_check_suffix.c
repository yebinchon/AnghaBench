
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct substring {size_t length; size_t string; } ;


 int FALSE ;
 scalar_t__ strncasecmp (size_t,size_t,size_t) ;

__attribute__((used)) static bool
necp_check_suffix(struct substring parent, struct substring suffix, bool require_dot_before_suffix)
{
 if (parent.length <= suffix.length) {
  return (FALSE);
 }

 size_t length_difference = (parent.length - suffix.length);

 if (require_dot_before_suffix) {
  if (((char *)(parent.string + length_difference - 1))[0] != '.') {
   return (FALSE);
  }
 }


 return (strncasecmp(parent.string + length_difference, suffix.string, suffix.length) == 0);
}
