
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NFS_IDMAP_CTRL_FALLBACK_NO_COMMON_IDS ;
 int nfs_idmap_ctrl ;
 int snprintf (char*,size_t,char*,int) ;
 size_t strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static char *
nfs4_fallback_id(int numid, int isgrp, char *buf, size_t size)
{
 const char *idp = ((void*)0);

 if (!(nfs_idmap_ctrl & NFS_IDMAP_CTRL_FALLBACK_NO_COMMON_IDS)) {

  if (numid == 0)
   idp = isgrp ? "wheel" : "root";
  else if (numid == -2)
   idp = "nobody";
 }
 if (!idp) {

  snprintf(buf, size-1, "%d", numid);
  buf[size-1] = '\0';
 } else {
  size_t idplen = strlcpy(buf, idp, size);
  if (idplen >= size)
   return (((void*)0));
 }

 return (buf);
}
