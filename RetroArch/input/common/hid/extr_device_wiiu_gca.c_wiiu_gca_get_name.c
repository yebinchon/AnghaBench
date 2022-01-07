
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gca_pad_t ;



__attribute__((used)) static const char *wiiu_gca_get_name(void *data)
{
   gca_pad_t *pad = (gca_pad_t *)data;

   return "GameCube Controller";
}
