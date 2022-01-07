
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct dirent {size_t d_namlen; scalar_t__ d_reclen; int d_name; int d_type; int d_ino; } ;
typedef int ino_t ;
typedef int e ;
typedef int caddr_t ;


 scalar_t__ DIRENT_SZ (struct dirent*) ;
 int DT_DIR ;
 int EINVAL ;
 int EMSGSIZE ;
 size_t NAME_MAX ;
 int memset (struct dirent*,int ,int) ;
 int strlcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ uio_resid (struct uio*) ;
 int uiomove (int ,scalar_t__,struct uio*) ;

__attribute__((used)) static int
store_entry_special(ino_t ino, const char * name, struct uio * uio)
{
 struct dirent e;
 size_t namelen = strlen(name);
 int error = EINVAL;

 if (namelen + 1 <= NAME_MAX) {
  memset(&e, 0, sizeof(e));

  e.d_ino = ino;
  e.d_type = DT_DIR;

  e.d_namlen = namelen;
  e.d_reclen = DIRENT_SZ(&e);
  if (uio_resid(uio) >= e.d_reclen) {
   strlcpy(e.d_name, name, NAME_MAX);
   error = uiomove((caddr_t)&e, e.d_reclen, uio);
  } else {
   error = EMSGSIZE;
  }
 }
 return error;
}
