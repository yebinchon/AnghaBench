
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* uuid_t ;


 int uuid_generate_random (int*) ;

__attribute__((used)) static inline void
necp_generate_client_id(uuid_t client_id, bool is_flow)
{
 uuid_generate_random(client_id);

 if (is_flow) {
  client_id[9] |= 0x01;
 } else {
  client_id[9] &= ~0x01;
 }
}
