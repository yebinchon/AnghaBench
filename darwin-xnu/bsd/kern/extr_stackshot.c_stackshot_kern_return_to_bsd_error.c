
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;


 int EBUSY ;
 int EEXIST ;
 int EINTR ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSPC ;
 int ENOTSUP ;
 int EPERM ;
 int ETIMEDOUT ;
__attribute__((used)) static int
stackshot_kern_return_to_bsd_error(kern_return_t kr)
{
 switch (kr) {
  case 128:
   return 0;
  case 129:


   return ENOMEM;
     case 136:
  case 131:



   return ENOSPC;
  case 132:
   return EPERM;
  case 135:
   return EEXIST;
  case 133:
   return ENOTSUP;
  case 134:

   return ENOENT;
     case 138:

   return EINTR;
     case 137:

   return EBUSY;
     case 130:

   return ETIMEDOUT;
  default:
   return EINVAL;
 }
}
