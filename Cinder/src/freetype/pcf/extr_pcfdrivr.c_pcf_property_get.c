
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int no_long_family_names; } ;
typedef TYPE_1__* PCF_Driver ;
typedef char const* FT_Module ;
typedef int FT_Error ;
typedef int FT_Bool ;


 int FT_Err_Ok ;
 int FT_THROW (int ) ;
 int FT_TRACE0 (char*) ;
 int FT_UNUSED (char const*) ;
 int Missing_Property ;
 int ft_strcmp (char const*,char*) ;

__attribute__((used)) static FT_Error
  pcf_property_get( FT_Module module,
                    const char* property_name,
                    const void* value )
  {
    FT_UNUSED( module );
    FT_UNUSED( value );

    FT_UNUSED( property_name );




    FT_TRACE0(( "pcf_property_get: missing property `%s'\n",
                property_name ));
    return FT_THROW( Missing_Property );
  }
