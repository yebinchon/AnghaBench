
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
typedef int UCHAR ;


 int Copy (int *,int *,int) ;
 int Sha1 (int *,int *,int) ;
 int UDP_ACCELERATION_COMMON_KEY_SIZE ;
 int UDP_ACCELERATION_PACKET_IV_SIZE ;

void UdpAccelCalcKey(UCHAR *key, UCHAR *common_key, UCHAR *iv)
{
 UCHAR tmp[UDP_ACCELERATION_COMMON_KEY_SIZE + UDP_ACCELERATION_PACKET_IV_SIZE];

 if (key == ((void*)0) || common_key == ((void*)0) || iv == ((void*)0))
 {
  return;
 }

 Copy(tmp, common_key, UDP_ACCELERATION_COMMON_KEY_SIZE);
 Copy(tmp + UDP_ACCELERATION_COMMON_KEY_SIZE, iv, UDP_ACCELERATION_PACKET_IV_SIZE);

 Sha1(key, tmp, sizeof(tmp));
}
