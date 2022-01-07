
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int _SHIFTR (int,int,int) ;
 int err2num (int) ;

__attribute__((used)) static u8 convert(u32 errorcode)
{
 u8 err,err_num;

 if((errorcode-0x01230000)==0x4567) return 255;
 else if((errorcode-0x01230000)==0x4568) return 254;

 err = _SHIFTR(errorcode,24,8);
 err_num = err2num((errorcode&0x00ffffff));
 if(err>0x06) err = 0x06;

 return err_num+(err*30);
}
