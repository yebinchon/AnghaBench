
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 int get_hex (int *) ;
 int printf (char*) ;

__attribute__((used)) static void get_uword(UWORD *val)
{
 if (!get_hex(val))
  printf("Invalid argument!\n");
}
