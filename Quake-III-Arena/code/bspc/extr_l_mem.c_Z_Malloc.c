
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* GetClearedMemory (int) ;

void *Z_Malloc(int size)
{
 return GetClearedMemory(size);
}
