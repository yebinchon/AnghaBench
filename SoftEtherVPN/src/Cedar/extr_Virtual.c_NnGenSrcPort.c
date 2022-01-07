
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int NN_RAW_IP_PORT_END ;
 int NN_RAW_IP_PORT_START ;
 int Rand32 () ;

UINT NnGenSrcPort(bool raw_ip_mode)
{
 if (raw_ip_mode == 0)
 {
  return 1025 + Rand32() % (65500 - 1025);
 }
 else
 {
  return NN_RAW_IP_PORT_START + Rand32() % (NN_RAW_IP_PORT_END - NN_RAW_IP_PORT_START);
 }
}
