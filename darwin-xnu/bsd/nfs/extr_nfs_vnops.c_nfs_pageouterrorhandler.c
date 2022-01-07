
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char DUMP ;
 int NFS_ELAST ;
 char* errortooutcome ;

char
nfs_pageouterrorhandler(int error)
{
 if (error > NFS_ELAST)
  return(DUMP);
 else
  return(errortooutcome[error]);
}
