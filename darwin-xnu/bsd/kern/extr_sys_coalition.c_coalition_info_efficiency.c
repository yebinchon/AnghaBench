
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_size_t ;
typedef int user_addr_t ;
typedef int uint64_t ;
typedef int flags ;
typedef int coalition_t ;


 int COALITION_EFFICIENCY_VALID_FLAGS ;
 int COALITION_FLAGS_EFFICIENT ;
 scalar_t__ COALITION_TYPE_JETSAM ;
 int EINVAL ;
 int MIN (int ,int) ;
 int coalition_set_efficient (int ) ;
 scalar_t__ coalition_type (int ) ;
 int copyin (int ,int*,int ) ;

__attribute__((used)) static int
coalition_info_efficiency(coalition_t coal, user_addr_t buffer, user_size_t bufsize)
{
 int error = 0;
 if (coalition_type(coal) != COALITION_TYPE_JETSAM)
  return EINVAL;
 uint64_t flags = 0;
 error = copyin(buffer, &flags, MIN(bufsize, sizeof(flags)));
 if (error)
  return error;
 if ((flags & COALITION_EFFICIENCY_VALID_FLAGS) == 0)
  return EINVAL;
 if (flags & COALITION_FLAGS_EFFICIENT) {
     coalition_set_efficient(coal);
 }
 return error;
}
