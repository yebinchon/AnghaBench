
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* _siReg ;

void SI_TransferCommands()
{
 _siReg[14] = 0x80000000;
}
