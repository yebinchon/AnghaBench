
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int maxfiles ;
 scalar_t__ offset ;
 scalar_t__ selection ;

void ClearSelector(u32 max)
{
  maxfiles = max;
  offset = 0;
  selection = 0;
}
