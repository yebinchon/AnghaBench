
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_size_t ;
typedef int user_addr_t ;
typedef int uint32_t ;
typedef int length32 ;
typedef int fakeheader ;


 int ERANGE ;
 int copyout (void*,int ,size_t) ;
 int htonl (int ) ;
 int memcpy (char*,int *,int) ;

__attribute__((used)) static int
csops_copy_token(void *start, size_t length, user_size_t usize, user_addr_t uaddr)
{
 char fakeheader[8] = { 0 };
 int error;

 if (usize < sizeof(fakeheader))
  return ERANGE;


 if (((void*)0) == start) {
  start = fakeheader;
  length = sizeof(fakeheader);
 } else if (usize < length) {

  uint32_t length32 = htonl((uint32_t)length);
  memcpy(&fakeheader[4], &length32, sizeof(length32));

  error = copyout(fakeheader, uaddr, sizeof(fakeheader));
  if (error == 0)
   return ERANGE;
  return error;
 }
 return copyout(start, uaddr, length);
}
