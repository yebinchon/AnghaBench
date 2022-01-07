
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg {void* y2; void* x2; void* y1; void* x1; int width; void* check_fn; void* inside_fn; int color; } ;


 int FN_CHECK ;
 int FN_INSIDE ;
 int color_of (char const*) ;
 void* coordinate_of (char const*) ;
 void* shape_of (char const*,int ,int ) ;
 int width_of (char const*) ;

__attribute__((used)) static void
parse_arg(struct arg *arg, const char **argv )
{

   arg->color = color_of(argv[0]);
   arg->width = width_of(argv[1]);
   arg->inside_fn = shape_of(argv[2], arg->width, FN_INSIDE);
   arg->check_fn = shape_of(argv[2], arg->width, FN_CHECK);
   arg->x1 = coordinate_of(argv[3]);
   arg->y1 = coordinate_of(argv[4]);
   arg->x2 = coordinate_of(argv[5]);
   arg->y2 = coordinate_of(argv[6]);
}
