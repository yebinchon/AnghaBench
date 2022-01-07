
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int private_dict; } ;
struct TYPE_4__ {TYPE_1__ type1; } ;
typedef TYPE_2__* T42_Face ;
typedef int PS_PrivateRec ;
typedef scalar_t__ FT_Face ;
typedef int FT_Error ;


 int FT_Err_Ok ;

__attribute__((used)) static FT_Error
  t42_ps_get_font_private( FT_Face face,
                           PS_PrivateRec* afont_private )
  {
    *afont_private = ((T42_Face)face)->type1.private_dict;

    return FT_Err_Ok;
  }
