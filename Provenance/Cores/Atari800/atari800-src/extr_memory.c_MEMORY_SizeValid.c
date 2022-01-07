
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMORY_RAM_320_COMPY_SHOP ;
 int MEMORY_RAM_320_RAMBO ;

int MEMORY_SizeValid(int size)
{
 return size == 8 || size == 16 || size == 24 || size == 32
        || size == 40 || size == 48 || size == 52 || size == 64
        || size == 128 || size == 192 || size == MEMORY_RAM_320_RAMBO
        || size == MEMORY_RAM_320_COMPY_SHOP || size == 576 || size == 1088;
}
