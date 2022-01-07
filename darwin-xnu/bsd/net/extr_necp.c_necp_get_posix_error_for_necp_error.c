
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EPERM ;
__attribute__((used)) static int
necp_get_posix_error_for_necp_error(int response_error)
{
 switch (response_error) {
  case 128:
  case 133:
  case 130:
  case 132:
  case 129: {
   return (EINVAL);
  }
  case 131: {
   return (ENOENT);
  }
  case 134: {
   return (EPERM);
  }
  case 135:
  default: {
   return (ENOMEM);
  }
 }
}
