
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float GLfloat ;



__attribute__((used)) static GLfloat inc_and_clip_distance(GLfloat distance, GLfloat distance_inc)
{
   distance += distance_inc;

   if (distance >= 10.0f)
      distance = 10.f;
   else if (distance <= 1.0f)
      distance = 1.0f;

   return distance;
}
