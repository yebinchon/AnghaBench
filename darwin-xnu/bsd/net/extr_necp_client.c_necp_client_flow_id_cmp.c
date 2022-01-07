
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_client_flow_registration {int registration_id; } ;


 int uuid_compare (int ,int ) ;

__attribute__((used)) static inline int
necp_client_flow_id_cmp(struct necp_client_flow_registration *flow0, struct necp_client_flow_registration *flow1)
{
 return (uuid_compare(flow0->registration_id, flow1->registration_id));
}
