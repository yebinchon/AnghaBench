
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOENT ;
 int errno ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
port_for_id_internal(const char *id, const char **ids, int nids)
{
 if (!id) {
  errno = EINVAL;
  return -1;
 }

 for (int i = 0; i < nids; i++) {
  if (ids[i] && strcmp(ids[i], id) == 0) {
   return i;
  }
 }

 errno = ENOENT;
 return -1;
}
