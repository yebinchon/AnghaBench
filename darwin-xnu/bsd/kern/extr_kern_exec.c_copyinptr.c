
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int user_addr_t ;


 unsigned int CAST_USER_ADDR_T (unsigned int) ;
 int copyin (unsigned int,unsigned int*,int) ;

__attribute__((used)) static int
copyinptr(user_addr_t froma, user_addr_t *toptr, int ptr_size)
{
 int error;

 if (ptr_size == 4) {

  unsigned int i;

  error = copyin(froma, &i, 4);
  *toptr = CAST_USER_ADDR_T(i);
 } else {
  error = copyin(froma, toptr, 8);
 }
 return (error);
}
