
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; float x; float y; int cy; int cx; } ;
typedef TYPE_1__ stbtt_vertex ;
typedef int stbtt__point ;
typedef int points ;





 int free (int*) ;
 scalar_t__ malloc (int) ;
 int stbtt__add_point (int*,int ,float,float) ;
 int stbtt__tesselate_curve (int*,int*,float,float,int ,int ,float,float,float,int ) ;

__attribute__((used)) static stbtt__point *stbtt_FlattenCurves(stbtt_vertex *vertices, int num_verts,
      float objspace_flatness, int **contour_lengths, int *num_contours, void *userdata)
{
   stbtt__point *points=0;
   int num_points=0;

   float objspace_flatness_squared = objspace_flatness * objspace_flatness;
   int i,n=0,start=0, pass;


   for (i=0; i < num_verts; ++i)
      if (vertices[i].type == 128)
         ++n;

   *num_contours = n;
   if (n == 0) return 0;

   *contour_lengths = (int *)malloc(sizeof(**contour_lengths) * n);

   if (*contour_lengths == 0) {
      *num_contours = 0;
      return 0;
   }


   for (pass=0; pass < 2; ++pass)
   {
      float x=0,y=0;

      if (pass == 1)
      {
         points = (stbtt__point *)malloc(num_points * sizeof(points[0]));
         if (points == ((void*)0)) goto error;
      }
      num_points = 0;
      n= -1;

      for (i=0; i < num_verts; ++i)
      {
         switch (vertices[i].type)
         {
            case 128:

               if (n >= 0)
                  (*contour_lengths)[n] = num_points - start;
               ++n;
               start = num_points;

                 x = vertices[i].x;
                 y = vertices[i].y;
               stbtt__add_point(points, num_points++, x,y);
               break;
            case 129:
                 x = vertices[i].x;
                 y = vertices[i].y;
               stbtt__add_point(points, num_points++, x, y);
               break;
            case 130:
               stbtt__tesselate_curve(points, &num_points, x,y,
                                        vertices[i].cx, vertices[i].cy,
                                        vertices[i].x, vertices[i].y,
                                        objspace_flatness_squared, 0);
                 x = vertices[i].x;
                 y = vertices[i].y;
               break;
         }
      }
      (*contour_lengths)[n] = num_points - start;
   }

   return points;
error:
   free(points);
   free(*contour_lengths);
   *contour_lengths = 0;
   *num_contours = 0;
   return ((void*)0);
}
