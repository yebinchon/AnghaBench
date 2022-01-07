
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 int hex (char) ;

__attribute__((used)) static s32 hexToInt(char **ptr, s32 *ival)
{
 s32 cnt;
 s32 val,nibble;

 val = 0;
 cnt = 0;
 while(**ptr) {
  nibble = hex(**ptr);
  if(nibble<0) break;

  val = (val<<4)|nibble;
  cnt++;

  (*ptr)++;
 }
 *ival = val;
 return cnt;
}
