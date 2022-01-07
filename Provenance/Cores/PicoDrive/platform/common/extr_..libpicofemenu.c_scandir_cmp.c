
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_type; } ;


 scalar_t__ DT_DIR ;
 int alphasort (struct dirent const**,struct dirent const**) ;

__attribute__((used)) static int scandir_cmp(const void *p1, const void *p2)
{
 const struct dirent **d1 = (const struct dirent **)p1;
 const struct dirent **d2 = (const struct dirent **)p2;
 if ((*d1)->d_type == (*d2)->d_type)
  return alphasort(d1, d2);
 if ((*d1)->d_type == DT_DIR)
  return -1;
 if ((*d2)->d_type == DT_DIR)
  return 1;

 return alphasort(d1, d2);
}
