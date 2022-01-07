
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int disks ;


 int disk_count ;

__attribute__((used)) static bool disk_add_image_index(void)
{
 if (disk_count >= sizeof(disks) / sizeof(disks[0]))
  return 0;

 disk_count++;
 return 1;
}
