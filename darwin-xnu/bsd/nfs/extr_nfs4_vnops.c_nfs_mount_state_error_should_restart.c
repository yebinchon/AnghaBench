
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
nfs_mount_state_error_should_restart(int error)
{
 switch (error) {
 case 128:
 case 129:
 case 134:
 case 132:
 case 130:
 case 133:
 case 131:
  return (1);
 }
 return (0);
}
