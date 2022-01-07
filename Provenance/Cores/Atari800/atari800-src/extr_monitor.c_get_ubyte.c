
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef scalar_t__ UBYTE ;


 int get_hex (int*) ;
 int printf (char*) ;

__attribute__((used)) static void get_ubyte(UBYTE *val)
{
 UWORD uword;
 if (!get_hex(&uword) || uword > 0xff)
  printf("Invalid argument!\n");
 else
  *val = (UBYTE) uword;
}
