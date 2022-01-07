
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* buffer ;
 int ext ;
 int hi ;
 int inportb (int) ;
 int key ;
 int left ;
 int outportb (int,int) ;
 int raw_key ;

void key_handler(void)
{
 asm("cli; pusha");
 raw_key = inportb(0x60);
        if (ext==2) ext=1;else
        if (ext==1)
        {
            left=raw_key&0x80;
            key=(raw_key&0x7f)+128;
            buffer[hi++]=key+(left<<8);
            if (hi==100) hi=0;
            ext=0;
        } else
        {
          key=raw_key&0x7f;
          left=raw_key&0x80;
          switch(raw_key)
          {
            case 0xe1:ext=2;break;
            case 0xe0:ext=1;break;
            default:
              buffer[hi++]=key+(left<<8);
              if (hi==100) hi=0;
          }
        }
 outportb(0x20, 0x20);
 asm("popa; sti");
}
