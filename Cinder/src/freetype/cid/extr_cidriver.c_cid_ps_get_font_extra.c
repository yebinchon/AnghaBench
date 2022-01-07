
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int font_extra; } ;
typedef int PS_FontExtraRec ;
typedef scalar_t__ FT_Face ;
typedef int FT_Error ;
typedef TYPE_1__* CID_Face ;


 int FT_Err_Ok ;

__attribute__((used)) static FT_Error
  cid_ps_get_font_extra( FT_Face face,
                        PS_FontExtraRec* afont_extra )
  {
    *afont_extra = ((CID_Face)face)->font_extra;

    return FT_Err_Ok;
  }
