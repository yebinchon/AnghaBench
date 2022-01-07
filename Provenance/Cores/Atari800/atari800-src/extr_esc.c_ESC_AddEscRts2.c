
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UWORD ;
typedef size_t UBYTE ;
typedef int ESC_FunctionType ;


 int MEMORY_dPutByte (scalar_t__,size_t) ;
 scalar_t__* esc_address ;
 int * esc_function ;

void ESC_AddEscRts2(UWORD address, UBYTE esc_code, ESC_FunctionType function)
{
 esc_address[esc_code] = address;
 esc_function[esc_code] = function;
 MEMORY_dPutByte(address, 0xd2);
 MEMORY_dPutByte(address + 1, esc_code);
}
