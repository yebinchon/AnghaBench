
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nfstype ;
typedef enum vtype { ____Placeholder_vtype } vtype ;
 int NFS_VER2 ;
 int NFS_VER3 ;
 int VBLK ;
 int VCHR ;
 int VDIR ;
 int VFIFO ;
 int VLNK ;
 int VNON ;
 int VREG ;
 int VSOCK ;

enum vtype
nfstov_type(nfstype nvtype, int nfsvers)
{
 switch (nvtype) {
 case 130:
  return VNON;
 case 129:
  return VREG;
 case 134:
  return VDIR;
 case 136:
  return VBLK;
 case 135:
  return VCHR;
 case 132:
  return VLNK;
 case 128:
  if (nfsvers > NFS_VER2)
   return VSOCK;
 case 133:
  if (nfsvers > NFS_VER2)
   return VFIFO;
 case 137:
  if (nfsvers > NFS_VER3)
   return VDIR;
 case 131:
  if (nfsvers > NFS_VER3)
   return VREG;
 default:
  return VNON;
 }
}
