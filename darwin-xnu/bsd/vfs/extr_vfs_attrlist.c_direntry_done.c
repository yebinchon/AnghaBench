
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_vn_data {scalar_t__ fv_buf; scalar_t__ fv_bufdone; scalar_t__ fv_bufsiz; } ;
struct direntry {scalar_t__ d_reclen; } ;



__attribute__((used)) static void
direntry_done(struct fd_vn_data *fvd)
{
 struct direntry *dp;

 dp = (struct direntry *)(fvd->fv_buf + fvd->fv_bufdone);
 if (dp->d_reclen) {
  fvd->fv_bufdone += dp->d_reclen;
  if (fvd->fv_bufdone > fvd->fv_bufsiz) {
   fvd->fv_bufdone = fvd->fv_bufsiz;
  }
 } else {
  fvd->fv_bufdone = fvd->fv_bufsiz;
 }





 if (fvd->fv_bufdone == fvd->fv_bufsiz) {
  fvd->fv_bufdone = 0;
  fvd->fv_bufsiz = 0;
 }
}
