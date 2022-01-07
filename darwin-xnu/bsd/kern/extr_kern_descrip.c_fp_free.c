
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileproc {int f_fglob; } ;
typedef int proc_t ;


 int fdrelse (int ,int) ;
 int fg_free (int ) ;
 int fileproc_free (struct fileproc*) ;
 int proc_fdlock_spin (int ) ;
 int proc_fdunlock (int ) ;

int
fp_free(proc_t p, int fd, struct fileproc * fp)
{
        proc_fdlock_spin(p);
 fdrelse(p, fd);
        proc_fdunlock(p);

 fg_free(fp->f_fglob);
 fileproc_free(fp);
 return(0);
}
