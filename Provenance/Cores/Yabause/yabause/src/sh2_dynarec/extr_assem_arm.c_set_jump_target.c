
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int pointer ;


 int assert (int) ;

void set_jump_target(pointer addr,pointer target)
{
  u8 *ptr=(u8 *)addr;
  u32 *ptr2=(u32 *)ptr;
  if(ptr[3]==0xe2) {
    assert((target-(u32)ptr2-8)<1024);
    assert((addr&3)==0);
    assert((target&3)==0);
    *ptr2=(*ptr2&0xFFFFF000)|((target-(u32)ptr2-8)>>2)|0xF00;

  }
  else if(ptr[3]==0x72) {

    if((target-(u32)ptr2-8)<1024) {
      assert((addr&3)==0);
      assert((target&3)==0);
      *ptr2=(*ptr2&0xFFFFF000)|((target-(u32)ptr2-8)>>2)|0xF00;
    }
    else if((target-(u32)ptr2-8)<4096&&!((target-(u32)ptr2-8)&15)) {
      assert((addr&3)==0);
      assert((target&3)==0);
      *ptr2=(*ptr2&0xFFFFF000)|((target-(u32)ptr2-8)>>4)|0xE00;
    }
    else *ptr2=(0x7A000000)|(((target-(u32)ptr2-8)<<6)>>8);
  }
  else {
    assert((ptr[3]&0x0e)==0xa);
    *ptr2=(*ptr2&0xFF000000)|(((target-(u32)ptr2-8)<<6)>>8);
  }
}
