
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int kern_return_t ;
typedef scalar_t__ coalition_t ;
typedef int cid ;


 scalar_t__ COALITION_NULL ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int EPERM ;
 int ESRCH ;




 int coal_dbg (char*,int ,int ,int) ;
 scalar_t__ coalition_find_by_id (int ) ;
 int coalition_reap_internal (scalar_t__) ;
 int coalition_release (scalar_t__) ;
 int copyin (int ,int *,int) ;

__attribute__((used)) static
int
coalition_reap_syscall(user_addr_t cidp, uint32_t flags)
{
 kern_return_t kr;
 int error = 0;
 uint64_t cid;
 coalition_t coal;

 if (flags != 0) {
  return EINVAL;
 }

 error = copyin(cidp, &cid, sizeof(cid));
 if (error) {
  return error;
 }

 coal = coalition_find_by_id(cid);
 if (coal == COALITION_NULL) {
  return ESRCH;
 }

 kr = coalition_reap_internal(coal);
 coalition_release(coal);

 switch (kr) {
 case 129:
  break;
 case 131:
  error = EPERM;
  break;
 case 128:
  error = ESRCH;
  break;
 case 130:
  error = EBUSY;
  break;
 default:
  error = EIO;
  break;
 }

 coal_dbg("(%llu, %u) -> %d", cid, flags, error);

 return error;
}
