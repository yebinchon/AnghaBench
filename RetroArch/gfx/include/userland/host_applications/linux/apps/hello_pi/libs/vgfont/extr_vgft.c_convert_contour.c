
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float VGfloat ;
struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ FT_Vector ;


 int VG_CLOSE_PATH ;
 int VG_CUBIC_TO ;
 int VG_LINE_TO ;
 int VG_MOVE_TO ;
 int VG_QUAD_TO ;
 int assert (int) ;
 float* coords ;
 int coords_count ;
 float float_from_26_6 (int ) ;
 int * segments ;
 int segments_count ;

__attribute__((used)) static void convert_contour(const FT_Vector *points, const char *tags, short points_count)
{
   int first_coords = coords_count;

   int first = 1;
   char last_tag = 0;
   int c = 0;

   for (; points_count != 0; ++points, ++tags, --points_count) {
      ++c;

      char tag = *tags;
      if (first) {
         assert(tag & 0x1);
         assert(c==1); c=0;
         segments[segments_count++] = VG_MOVE_TO;
         first = 0;
      } else if (tag & 0x1) {


         if (last_tag & 0x1) {

            assert(c==1); c=0;
            segments[segments_count++] = VG_LINE_TO;
         } else {

            if (last_tag & 0x2) {

               assert(c==3); c=0;
               segments[segments_count++] = VG_CUBIC_TO;
            } else {

               assert(c==2); c=0;
               segments[segments_count++] = VG_QUAD_TO;
            }
         }
      } else {


         if (tag & 0x2) {


            assert((last_tag & 0x1) || (last_tag & 0x2));
         } else {


            if (!(last_tag & 0x1)) {


               assert(!(last_tag & 0x2));


               assert(c==2); c=1;
               segments[segments_count++] = VG_QUAD_TO;
               VGfloat x = (coords[coords_count - 2] + float_from_26_6(points->x)) * 0.5f;
               VGfloat y = (coords[coords_count - 1] + float_from_26_6(points->y)) * 0.5f;
               coords[coords_count++] = x;
               coords[coords_count++] = y;
            }
         }
      }
      last_tag = tag;

      coords[coords_count++] = float_from_26_6(points->x);
      coords[coords_count++] = float_from_26_6(points->y);
   }

   if (last_tag & 0x1) {

      assert(c==0);
   } else {
      ++c;


      if (last_tag & 0x2) {

         assert(c==3); c=0;
         segments[segments_count++] = VG_CUBIC_TO;
      } else {

         assert(c==2); c=0;
         segments[segments_count++] = VG_QUAD_TO;
      }

      coords[coords_count++] = coords[first_coords + 0];
      coords[coords_count++] = coords[first_coords + 1];
   }

   segments[segments_count++] = VG_CLOSE_PATH;
}
