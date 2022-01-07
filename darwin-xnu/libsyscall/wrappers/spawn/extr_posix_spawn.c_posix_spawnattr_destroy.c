
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * posix_spawnattr_t ;
typedef int _posix_spawnattr_t ;


 int EINVAL ;
 int free (int ) ;
 int posix_spawn_destroycoalition_info_np (int **) ;
 int posix_spawn_destroypersona_info_np (int **) ;
 int posix_spawn_destroyportactions_np (int **) ;

int
posix_spawnattr_destroy(posix_spawnattr_t *attr)
{
 _posix_spawnattr_t psattr;

 if (attr == ((void*)0) || *attr == ((void*)0))
  return EINVAL;

 psattr = *(_posix_spawnattr_t *)attr;
 posix_spawn_destroyportactions_np(attr);
 posix_spawn_destroycoalition_info_np(attr);
 posix_spawn_destroypersona_info_np(attr);

 free(psattr);
 *attr = ((void*)0);

 return (0);
}
