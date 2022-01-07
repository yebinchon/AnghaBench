
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef scalar_t__ uint32_t ;
struct kpersona_info {int dummy; } ;
typedef int info_v ;


 int EINVAL ;
 scalar_t__ PERSONA_INFO_V1 ;
 int copyin (int ,scalar_t__*,int) ;
 int copyout (struct kpersona_info*,int ,int) ;

__attribute__((used)) static int kpersona_copyout(struct kpersona_info *kinfo, user_addr_t infop)
{
 uint32_t info_v;
 int error;

 error = copyin(infop, &info_v, sizeof(info_v));
 if (error)
  return error;



 if (info_v != PERSONA_INFO_V1)
  return EINVAL;

 error = copyout(kinfo, infop, sizeof(*kinfo));
 return error;
}
