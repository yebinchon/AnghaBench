
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,int,int,int) ;

__attribute__((used)) static void sprintf_lba(char *buf, size_t size, int lba)
{
  lba += 150;
  snprintf(buf, size, "%02d:%02d:%02d", lba / 60 / 75,
    (lba / 75) % 60, lba % 75);
}
