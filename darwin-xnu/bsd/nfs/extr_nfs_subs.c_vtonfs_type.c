
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nfstype ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 int NFBLK ;
 int NFCHR ;
 int NFDIR ;
 int NFFIFO ;
 int NFLNK ;
 int NFNON ;
 int NFREG ;
 int NFSOCK ;
 int NFS_VER2 ;
nfstype
vtonfs_type(enum vtype vtype, int nfsvers)
{
 switch (vtype) {
 case 131:
  return NFNON;
 case 130:
  return NFREG;
 case 134:
  return NFDIR;
 case 137:
  return NFBLK;
 case 136:
  return NFCHR;
 case 132:
  return NFLNK;
 case 129:
  if (nfsvers > NFS_VER2)
   return NFSOCK;
 case 133:
  if (nfsvers > NFS_VER2)
   return NFFIFO;
 case 138:
 case 128:
 case 135:
 default:
  return NFNON;
 }
}
