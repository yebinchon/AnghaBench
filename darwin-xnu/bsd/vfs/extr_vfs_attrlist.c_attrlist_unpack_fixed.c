
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int EINVAL ;
 int bcopy (char*,void*,int) ;

__attribute__((used)) static int
attrlist_unpack_fixed(char **cursor, char *end, void *buf, ssize_t size)
{

 if ((*cursor) + size > end)
  return(EINVAL);

 bcopy(*cursor, buf, size);
 *cursor += size;
 return(0);
}
