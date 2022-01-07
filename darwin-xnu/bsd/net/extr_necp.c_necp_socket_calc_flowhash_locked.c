
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct necp_socket_info {int dummy; } ;


 int necp_kernel_socket_policies_gencount ;
 int net_flowhash (struct necp_socket_info*,int,int ) ;

__attribute__((used)) static inline u_int32_t
necp_socket_calc_flowhash_locked(struct necp_socket_info *info)
{
 return (net_flowhash(info, sizeof(*info), necp_kernel_socket_policies_gencount));
}
