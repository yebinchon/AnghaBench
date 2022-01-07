
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_19__ {scalar_t__ type; int location; int (* reader ) (int ,TYPE_3__*) ;} ;
struct TYPE_16__ {int font_bbox; int font_extra; int font_info; } ;
struct TYPE_18__ {TYPE_2__ type1; } ;
struct TYPE_15__ {int error; } ;
struct TYPE_14__ {TYPE_1__ root; } ;
struct TYPE_17__ {TYPE_10__ parser; } ;
typedef TYPE_3__* T42_Loader ;
typedef TYPE_4__* T42_Face ;
typedef TYPE_5__* T1_Field ;
typedef int FT_UInt ;
typedef int FT_Face ;
typedef int FT_Error ;





 scalar_t__ T1_FIELD_TYPE_CALLBACK ;
 scalar_t__ T1_FIELD_TYPE_FIXED_ARRAY ;
 scalar_t__ T1_FIELD_TYPE_INTEGER_ARRAY ;
 int T1_Load_Field (TYPE_10__*,TYPE_5__*,void**,int ,int ) ;
 int T1_Load_Field_Table (TYPE_10__*,TYPE_5__*,void**,int ,int ) ;
 int stub1 (int ,TYPE_3__*) ;

__attribute__((used)) static FT_Error
  t42_load_keyword( T42_Face face,
                    T42_Loader loader,
                    T1_Field field )
  {
    FT_Error error;
    void* dummy_object;
    void** objects;
    FT_UInt max_objects = 0;



    if ( field->type == T1_FIELD_TYPE_CALLBACK )
    {
      field->reader( (FT_Face)face, loader );
      error = loader->parser.root.error;
      goto Exit;
    }




    switch ( field->location )
    {
    case 128:
      dummy_object = &face->type1.font_info;
      break;

    case 129:
      dummy_object = &face->type1.font_extra;
      break;

    case 130:
      dummy_object = &face->type1.font_bbox;
      break;

    default:
      dummy_object = &face->type1;
    }

    objects = &dummy_object;

    if ( field->type == T1_FIELD_TYPE_INTEGER_ARRAY ||
         field->type == T1_FIELD_TYPE_FIXED_ARRAY )
      error = T1_Load_Field_Table( &loader->parser, field,
                                   objects, max_objects, 0 );
    else
      error = T1_Load_Field( &loader->parser, field,
                             objects, max_objects, 0 );

   Exit:
    return error;
  }
