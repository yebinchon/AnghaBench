
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ int32 ;


 int FCEUI_CRC32 (int ,int *,scalar_t__) ;
 int en32 (int *,int ) ;
 int magic ;
 int memcpy (int *,int *,scalar_t__) ;
 int outcounter ;

__attribute__((used)) static uint8 *MakeUDP(uint8 *data, int32 len)
{

 static uint8 buf[12+32];

 en32(buf+4,magic);
 en32(buf+8,outcounter);
 memcpy(buf+12,data,len);
 en32(buf,FCEUI_CRC32(0,buf+4,8+len));
 return(buf);
}
