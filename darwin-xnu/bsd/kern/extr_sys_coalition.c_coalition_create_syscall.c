
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ kern_return_t ;
typedef int coalition_t ;
typedef int cid ;
typedef int boolean_t ;


 int COALITION_CREATE_FLAGS_GET_ROLE (int) ;
 int COALITION_CREATE_FLAGS_GET_TYPE (int) ;
 int COALITION_CREATE_FLAGS_MASK ;
 int COALITION_CREATE_FLAGS_PRIVILEGED ;
 int COALITION_TYPE_MAX ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ KERN_SUCCESS ;
 int coal_dbg (char*,int,int ) ;
 scalar_t__ coalition_create_internal (int,int,int,int *) ;
 int coalition_id (int ) ;
 int copyout (int *,int ,int) ;

__attribute__((used)) static
int
coalition_create_syscall(user_addr_t cidp, uint32_t flags)
{
 int error = 0;
 kern_return_t kr;
 uint64_t cid;
 coalition_t coal;
 int type = COALITION_CREATE_FLAGS_GET_TYPE(flags);
 int role = COALITION_CREATE_FLAGS_GET_ROLE(flags);
 boolean_t privileged = !!(flags & COALITION_CREATE_FLAGS_PRIVILEGED);

 if ((flags & (~COALITION_CREATE_FLAGS_MASK)) != 0)
  return EINVAL;
 if (type < 0 || type > COALITION_TYPE_MAX)
  return EINVAL;

 kr = coalition_create_internal(type, role, privileged, &coal);
 if (kr != KERN_SUCCESS) {

  error = ENOMEM;
  goto out;
 }

 cid = coalition_id(coal);

 coal_dbg("(addr, %u) -> %llu", flags, cid);
 error = copyout(&cid, cidp, sizeof(cid));
out:
 return error;
}
