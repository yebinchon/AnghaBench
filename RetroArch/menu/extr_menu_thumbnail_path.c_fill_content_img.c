
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int content_img; int content_label; } ;
typedef TYPE_1__ menu_thumbnail_path_data_t ;


 int strlcat (int ,char*,int) ;
 int strlcpy (int ,int ,int) ;
 char* strpbrk (int ,char*) ;

__attribute__((used)) static void fill_content_img(menu_thumbnail_path_data_t *path_data)
{
   char *scrub_char_pointer = ((void*)0);


   strlcpy(path_data->content_img,
         path_data->content_label, sizeof(path_data->content_img));





   while((scrub_char_pointer = strpbrk(path_data->content_img, "&*/:`\"<>?\\|")))
      *scrub_char_pointer = '_';


   strlcat(path_data->content_img, ".png", sizeof(path_data->content_img));
}
