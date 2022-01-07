
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int int32 ;


 int en32 (int *,int ) ;
 int memcpy (int *,int *,int ) ;
 int outcounter ;

__attribute__((used)) static uint8 *MakeTCP(uint8 *data, int32 len)
{

 static uint8 buf[4+32];

 en32(buf,outcounter);
 memcpy(buf+4,data,len);
 return(buf);
}
