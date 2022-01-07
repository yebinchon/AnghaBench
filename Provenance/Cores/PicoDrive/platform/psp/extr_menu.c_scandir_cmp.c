
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_dirent {int d_type; int d_name; } ;


 int FIO_S_IFDIR ;
 int strcasecmp (int ,int ) ;

__attribute__((used)) static int scandir_cmp(const void *p1, const void *p2)
{
 struct my_dirent **d1 = (struct my_dirent **)p1, **d2 = (struct my_dirent **)p2;
 if ((*d1)->d_type & (*d2)->d_type & FIO_S_IFDIR)
  return strcasecmp((*d1)->d_name, (*d2)->d_name);
 if ((*d1)->d_type & FIO_S_IFDIR) return -1;
 if ((*d2)->d_type & FIO_S_IFDIR) return 1;
 return strcasecmp((*d1)->d_name, (*d2)->d_name);
}
