
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_String ;
typedef int FT_Module_Interface ;
typedef int FT_Module ;


 int FT_UNUSED (int ) ;
 int ft_service_list_lookup (int ,int const*) ;
 int winfnt_services ;

__attribute__((used)) static FT_Module_Interface
  winfnt_get_service( FT_Module module,
                      const FT_String* service_id )
  {
    FT_UNUSED( module );

    return ft_service_list_lookup( winfnt_services, service_id );
  }
