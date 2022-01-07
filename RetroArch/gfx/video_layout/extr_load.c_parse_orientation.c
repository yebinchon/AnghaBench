
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_layout_orientation_t ;
typedef int scope_t ;
typedef int rxml_node_t ;


 int VIDEO_LAYOUT_FLIP_X ;
 int VIDEO_LAYOUT_FLIP_Y ;
 int VIDEO_LAYOUT_ROT0 ;
 int VIDEO_LAYOUT_ROT180 ;
 int VIDEO_LAYOUT_ROT270 ;
 int VIDEO_LAYOUT_ROT90 ;
 int VIDEO_LAYOUT_SWAP_XY ;
 int rxml_node_attrib (int *,char*) ;
 char* scope_eval (int *,int ) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static video_layout_orientation_t parse_orientation(scope_t *scope, rxml_node_t *node)
{
   const char *prop;
   video_layout_orientation_t result = VIDEO_LAYOUT_ROT0;

   if ((prop = scope_eval(scope, rxml_node_attrib(node, "rotate"))))
   {
      if (strcmp(prop, "90") == 0)
         result = VIDEO_LAYOUT_ROT90;

      else if (strcmp(prop, "180") == 0)
         result = VIDEO_LAYOUT_ROT180;

      else if (strcmp(prop, "270") == 0)
         result = VIDEO_LAYOUT_ROT270;
   }

   if ((prop = scope_eval(scope, rxml_node_attrib(node, "swapxy"))))
   {
      if (strcmp(prop, "no") != 0)
         result ^= VIDEO_LAYOUT_SWAP_XY;
   }

   if ((prop = scope_eval(scope, rxml_node_attrib(node, "flipx"))))
   {
      if (strcmp(prop, "no") != 0)
         result ^= VIDEO_LAYOUT_FLIP_X;
   }

   if ((prop = scope_eval(scope, rxml_node_attrib(node, "flipy"))))
   {
      if (strcmp(prop, "no") != 0)
         result ^= VIDEO_LAYOUT_FLIP_Y;
   }

   return result;
}
