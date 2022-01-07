
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
typedef scalar_t__ gid_t ;


 scalar_t__ GID_MAX ;
 scalar_t__ PF_OP_EQ ;
 scalar_t__ PF_OP_NE ;
 int pf_match (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

int
pf_match_gid(u_int8_t op, gid_t a1, gid_t a2, gid_t g)
{
 if (g == GID_MAX && op != PF_OP_EQ && op != PF_OP_NE)
  return (0);
 return (pf_match(op, a1, a2, g));
}
