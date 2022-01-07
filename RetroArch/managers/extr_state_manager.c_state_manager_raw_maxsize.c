
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int UINT16_MAX ;

__attribute__((used)) static size_t state_manager_raw_maxsize(size_t uncomp)
{

   const int maxcblkcover = UINT16_MAX * sizeof(uint16_t);

   size_t uncomp16 = (uncomp + sizeof(uint16_t) - 1) & -sizeof(uint16_t);

   size_t maxcblks = (uncomp + maxcblkcover - 1) / maxcblkcover;
   return uncomp16 + maxcblks * sizeof(uint16_t) * 2 + sizeof(uint16_t) *
      3;
}
