
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;


 int SetSocketBufferSizeWithBestEffort (int ,int,int ) ;
 int UDP_MAX_BUFFER_SIZE ;

void InitUdpSocketBufferSize(SOCKET s)
{
 SetSocketBufferSizeWithBestEffort(s, 1, UDP_MAX_BUFFER_SIZE);
 SetSocketBufferSizeWithBestEffort(s, 0, UDP_MAX_BUFFER_SIZE);
}
