
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ hexstr2bin (char const*,int *,int) ;

int uuid_str2bin(const char *str, u8 *bin)
{
 const char *pos;
 u8 *opos;

 pos = str;
 opos = bin;

 if (hexstr2bin(pos, opos, 4))
  return -1;
 pos += 8;
 opos += 4;

 if (*pos++ != '-' || hexstr2bin(pos, opos, 2))
  return -1;
 pos += 4;
 opos += 2;

 if (*pos++ != '-' || hexstr2bin(pos, opos, 2))
  return -1;
 pos += 4;
 opos += 2;

 if (*pos++ != '-' || hexstr2bin(pos, opos, 2))
  return -1;
 pos += 4;
 opos += 2;

 if (*pos++ != '-' || hexstr2bin(pos, opos, 6))
  return -1;

 return 0;
}
