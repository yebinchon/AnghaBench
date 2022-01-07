
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_Vector ;


 scalar_t__ COORDS_COUNT_MAX ;
 scalar_t__ SEGMENTS_COUNT_MAX ;
 int assert (int) ;
 int convert_contour (int const*,char const*,short) ;
 scalar_t__ coords_count ;
 scalar_t__ segments_count ;

__attribute__((used)) static void convert_outline(const FT_Vector *points, const char *tags, const short *contours, short contours_count, short points_count)
{
   segments_count = 0;
   coords_count = 0;

   short last_contour = 0;
   for (; contours_count != 0; ++contours, --contours_count) {
      short contour = *contours + 1;
      convert_contour(points + last_contour, tags + last_contour, contour - last_contour);
      last_contour = contour;
   }
   assert(last_contour == points_count);

   assert(segments_count <= SEGMENTS_COUNT_MAX);
   assert(coords_count <= COORDS_COUNT_MAX);
}
