
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMORY_Cart809fEnable () ;
 int update_8000_9fff () ;
 int update_d5 () ;

void AF80_InsertRightCartridge(void)
{
  MEMORY_Cart809fEnable();
  update_d5();
  update_8000_9fff();
}
