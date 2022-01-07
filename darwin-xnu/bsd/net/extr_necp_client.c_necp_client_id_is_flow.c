
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* uuid_t ;



__attribute__((used)) static inline bool
necp_client_id_is_flow(uuid_t client_id)
{
 return (client_id[9] & 0x01);
}
