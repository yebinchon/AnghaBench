
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BIT32_SET (int ,int ) ;
 int GFX_CTX_FLAGS_BLACK_FRAME_INSERTION ;
 int GFX_CTX_FLAGS_HARD_SYNC ;
 int GFX_CTX_FLAGS_MENU_FRAME_FILTERING ;

__attribute__((used)) static uint32_t gl1_get_flags(void *data)
{
   uint32_t flags = 0;

   BIT32_SET(flags, GFX_CTX_FLAGS_HARD_SYNC);
   BIT32_SET(flags, GFX_CTX_FLAGS_BLACK_FRAME_INSERTION);
   BIT32_SET(flags, GFX_CTX_FLAGS_MENU_FRAME_FILTERING);

   return flags;
}
