
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct overlay {unsigned int pos_increment; int size; scalar_t__ pos; } ;



__attribute__((used)) static void task_overlay_image_done(struct overlay *overlay)
{
   overlay->pos = 0;


   overlay->pos_increment = (overlay->size / 2) ? ((unsigned)(overlay->size / 2)) : 8;
}
