
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y_res; int x_res; scalar_t__ height; scalar_t__ width; scalar_t__ pixel; int face_id; } ;
typedef int * FT_Size ;
typedef int FT_Face ;
typedef int FT_F26Dot6 ;
typedef scalar_t__ FT_Error ;
typedef TYPE_1__* FTC_Scaler ;
typedef int FTC_Manager ;


 scalar_t__ FTC_Manager_LookupFace (int ,int ,int *) ;
 int FT_Activate_Size (int *) ;
 int FT_Done_Size (int *) ;
 scalar_t__ FT_New_Size (int ,int **) ;
 scalar_t__ FT_Set_Char_Size (int ,int ,int ,int ,int ) ;
 scalar_t__ FT_Set_Pixel_Sizes (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static FT_Error
  ftc_scaler_lookup_size( FTC_Manager manager,
                          FTC_Scaler scaler,
                          FT_Size *asize )
  {
    FT_Face face;
    FT_Size size = ((void*)0);
    FT_Error error;


    error = FTC_Manager_LookupFace( manager, scaler->face_id, &face );
    if ( error )
      goto Exit;

    error = FT_New_Size( face, &size );
    if ( error )
      goto Exit;

    FT_Activate_Size( size );

    if ( scaler->pixel )
      error = FT_Set_Pixel_Sizes( face, scaler->width, scaler->height );
    else
      error = FT_Set_Char_Size( face,
                                (FT_F26Dot6)scaler->width,
                                (FT_F26Dot6)scaler->height,
                                scaler->x_res,
                                scaler->y_res );
    if ( error )
    {
      FT_Done_Size( size );
      size = ((void*)0);
    }

  Exit:
    *asize = size;
    return error;
  }
