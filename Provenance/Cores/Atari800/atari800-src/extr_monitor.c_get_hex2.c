
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 scalar_t__ get_hex (int *) ;

__attribute__((used)) static int get_hex2(UWORD *hexval1, UWORD *hexval2)
{
 return get_hex(hexval1) && get_hex(hexval2);
}
