
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
ip_next_mtu(int mtu, int dir)
{
 static int mtutab[] = {
  65535, 32000, 17914, 8166, 4352, 2002, 1492, 1006, 508, 296,
  68, 0
 };
 int i;

 for (i = 0; i < (sizeof mtutab) / (sizeof mtutab[0]); i++) {
  if (mtu >= mtutab[i])
   break;
 }

 if (dir < 0) {
  if (i == 0) {
   return 0;
  } else {
   return mtutab[i - 1];
  }
 } else {
  if (mtutab[i] == 0) {
   return 0;
  } else if(mtu > mtutab[i]) {
   return mtutab[i];
  } else {
   return mtutab[i + 1];
  }
 }
}
