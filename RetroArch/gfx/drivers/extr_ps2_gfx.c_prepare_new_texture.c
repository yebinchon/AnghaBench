
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GSTEXTURE ;


 int * calloc (int,int) ;

__attribute__((used)) static GSTEXTURE * prepare_new_texture(void)
{
   GSTEXTURE *texture = calloc(1, sizeof(*texture));
   return texture;
}
