
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ user_addr_t ;
typedef int u_int32_t ;
struct if_fake_request {scalar_t__* iffr_reserved; } ;


 int EINVAL ;
 scalar_t__ USER_ADDR_NULL ;
 int copyin (scalar_t__,struct if_fake_request*,int) ;

__attribute__((used)) static int
if_fake_request_copyin(user_addr_t user_addr,
         struct if_fake_request *iffr, u_int32_t len)
{
 int error;

 if (user_addr == USER_ADDR_NULL || len < sizeof(*iffr)) {
  error = EINVAL;
  goto done;
 }
 error = copyin(user_addr, iffr, sizeof(*iffr));
 if (error != 0) {
  goto done;
 }
 if (iffr->iffr_reserved[0] != 0 || iffr->iffr_reserved[1] != 0 ||
     iffr->iffr_reserved[2] != 0 || iffr->iffr_reserved[3] != 0) {
  error = EINVAL;
  goto done;
 }
 done:
 return (error);
}
