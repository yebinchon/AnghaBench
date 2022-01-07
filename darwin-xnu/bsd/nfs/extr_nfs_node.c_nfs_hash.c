
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int u_char ;



u_long
nfs_hash(u_char *fhp, int fhsize)
{
 u_long fhsum;
 int i;

 fhsum = 0;
 for (i = 0; i < fhsize; i++)
  fhsum += *fhp++;
 return (fhsum);
}
