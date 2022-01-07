
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
nfs_mount_state_error_delegation_lost(int error)
{
 switch (error) {
 case 128:
 case 133:
 case 131:
 case 129:
 case 132:
 case 130:
  return (1);
 }
 return (0);
}
