
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void insert(unsigned int *opcode,int value,int pos)



{
    *opcode |= ((value & 0xF) << (12 - (pos * 4)));
}
