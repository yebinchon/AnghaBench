
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 int FALSE ;
 int TRUE ;
 scalar_t__ get_hex2 (int*,int*) ;
 int printf (char*) ;

__attribute__((used)) static int get_attrib_range(UWORD *addr1, UWORD *addr2)
{
 if (get_hex2(addr1, addr2) && *addr1 <= *addr2) {







  return TRUE;
 }
 printf("Missing or bad argument!\n");
 return FALSE;
}
