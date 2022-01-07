
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_size_t ;
typedef int user_addr_t ;
struct coalition_resource_usage {int dummy; } ;
typedef int kern_return_t ;
typedef int cru ;
typedef int coalition_t ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;



 int MIN (int ,int) ;
 int coalition_resource_usage_internal (int ,struct coalition_resource_usage*) ;
 int copyout (struct coalition_resource_usage*,int ,int ) ;

__attribute__((used)) static int __attribute__ ((noinline))
coalition_info_resource_usage(coalition_t coal, user_addr_t buffer, user_size_t bufsize)
{
 kern_return_t kr;
 struct coalition_resource_usage cru = {};

 kr = coalition_resource_usage_internal(coal, &cru);

 switch (kr) {
 case 130:
  return EINVAL;
 case 129:
  return ENOMEM;
 case 128:
  break;
 default:
  return EIO;
 }

 return copyout(&cru, buffer, MIN(bufsize, sizeof(cru)));
}
