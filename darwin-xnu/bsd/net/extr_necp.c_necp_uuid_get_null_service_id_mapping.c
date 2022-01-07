
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_uuid_id_mapping {int id; int uuid; } ;


 int NECP_NULL_SERVICE_ID ;
 int uuid_clear (int ) ;

__attribute__((used)) static struct necp_uuid_id_mapping *
necp_uuid_get_null_service_id_mapping(void)
{
 static struct necp_uuid_id_mapping null_mapping;
 uuid_clear(null_mapping.uuid);
 null_mapping.id = NECP_NULL_SERVICE_ID;

 return (&null_mapping);
}
