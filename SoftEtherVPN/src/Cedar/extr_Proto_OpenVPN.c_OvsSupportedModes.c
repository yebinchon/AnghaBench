
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int PROTO_MODE_TCP ;
 int PROTO_MODE_UDP ;

UINT OvsSupportedModes()
{
 return PROTO_MODE_TCP | PROTO_MODE_UDP;
}
