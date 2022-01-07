
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* f_mntfromname; } ;
struct mount {TYPE_1__ mnt_vfsstat; } ;


 int MAXPATHLEN ;
 int strlcpy (char*,char const*,size_t) ;
 size_t strnlen (char const*,int) ;

__attribute__((used)) static void
nfs_get_volname(struct mount *mp, char *volname, size_t len)
{
 const char *ptr, *cptr;
 const char *mntfrom = mp->mnt_vfsstat.f_mntfromname;
 size_t mflen = strnlen(mntfrom, MAXPATHLEN+1);

 if (mflen > MAXPATHLEN || mflen == 0) {
  strlcpy(volname, "Bad volname", len);
  return;
 }


 for (ptr = &mntfrom[mflen-1]; ptr != mntfrom && *ptr == '/'; ptr--) {
  mflen--;
 }


 cptr = ptr = ((void*)0);
 for(size_t i = 0; i < mflen; i++) {
  if (mntfrom[i] == '/')
   ptr = &mntfrom[i+1];

  else if (cptr == ((void*)0) && mntfrom[i] == ':')
   cptr = &mntfrom[i+1];
 }





 if (ptr == ((void*)0) || *ptr == '\0')
  ptr = cptr;

 if (ptr == ((void*)0))
  ptr = mntfrom;

 mflen = &mntfrom[mflen] - ptr;
 len = mflen+1 < len ? mflen+1 : len;

 strlcpy(volname, ptr, len);
}
