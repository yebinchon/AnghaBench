
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_file_lock {int nfl_flags; scalar_t__ nfl_owner; scalar_t__ nfl_type; scalar_t__ nfl_start; scalar_t__ nfl_end; } ;


 scalar_t__ F_WRLCK ;
 int NFS_FILE_LOCK_DEAD ;
 int NFS_FILE_LOCK_STYLE_MASK ;

int
nfs_file_lock_conflict(struct nfs_file_lock *nflp1, struct nfs_file_lock *nflp2, int *willsplit)
{

 if ((nflp1->nfl_flags & NFS_FILE_LOCK_DEAD) || (nflp2->nfl_flags & NFS_FILE_LOCK_DEAD))
  return (0);

 if ((nflp1->nfl_owner == nflp2->nfl_owner) &&
     ((nflp1->nfl_flags & NFS_FILE_LOCK_STYLE_MASK) == (nflp2->nfl_flags & NFS_FILE_LOCK_STYLE_MASK))) {
  if (willsplit && (nflp1->nfl_type != nflp2->nfl_type) &&
      (nflp1->nfl_start > nflp2->nfl_start) &&
      (nflp1->nfl_end < nflp2->nfl_end))
   *willsplit = 1;
  return (0);
 }

 if ((nflp1->nfl_start > nflp2->nfl_end) || (nflp1->nfl_end < nflp2->nfl_start))
  return (0);

 if ((nflp1->nfl_type != F_WRLCK) && (nflp2->nfl_type != F_WRLCK))
  return (0);

 return (1);
}
