
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum image_type_enum { ____Placeholder_image_type_enum } image_type_enum ;


 int IMAGE_TYPE_BMP ;
 int IMAGE_TYPE_JPEG ;
 int IMAGE_TYPE_NONE ;
 int IMAGE_TYPE_PNG ;
 int IMAGE_TYPE_TGA ;
 scalar_t__ strstr (char const*,char*) ;

enum image_type_enum image_texture_get_type(const char *path)
{
   return IMAGE_TYPE_NONE;
}
