
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int disk_current_index ;

__attribute__((used)) static unsigned int disk_get_image_index(void)
{
 return disk_current_index;
}
