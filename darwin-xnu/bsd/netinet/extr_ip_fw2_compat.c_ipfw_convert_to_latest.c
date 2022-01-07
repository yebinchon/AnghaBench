
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt {int dummy; } ;
struct ip_fw {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;



 int ipfw_version_one_to_latest_32 (struct sockopt*,struct ip_fw*,int *) ;
 int ipfw_version_one_to_latest_64 (struct sockopt*,struct ip_fw*,int *) ;

int
ipfw_convert_to_latest(struct sockopt *sopt, struct ip_fw *curr_rule, int api_version, int is64user)
{
 int err = 0;




 switch (api_version) {
  case 129:

   err = EOPNOTSUPP;
   break;

  case 128:

   if ( is64user )
    err = ipfw_version_one_to_latest_64(sopt, curr_rule, ((void*)0));
   else
    err = ipfw_version_one_to_latest_32(sopt, curr_rule, ((void*)0));
   break;

  case 130:


   break;

  default:

   err = EINVAL;
   break;
 }

 return err;
}
