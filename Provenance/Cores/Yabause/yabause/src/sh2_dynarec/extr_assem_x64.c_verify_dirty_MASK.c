#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ pointer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,scalar_t__) ; 

int FUNC2(pointer addr)
{
  u8 *ptr=(u8 *)addr;
  if(ptr[0]==0xB8) {
    u32 source=*(u32 *)(ptr+1);
    u32 copy=*(u32 *)(ptr+6);
    u32 len=*(u32 *)(ptr+11);
    //printf("source=%x source-rdram=%x\n",source,source-(int)rdram);
    FUNC0(ptr[21]==0xE8); // call instruction
    //printf("verify_dirty: %x %x %x\n",source,copy,len);
    return !FUNC1((void *)source,(void *)copy,len);
  }
  FUNC0(ptr[0]==0x48&&ptr[1]==0xB8);
  /* 64-bit source pointer */
  u64 source=*(u64 *)(ptr+2);
  u32 copy=*(u32 *)(ptr+11);
  u32 len=*(u32 *)(ptr+16);
  //printf("source=%x source-rdram=%x\n",source,source-(int)rdram);
  FUNC0(ptr[26]==0xE8); // call instruction
  //printf("verify_dirty: %x %x %x\n",source,copy,len);
  return !FUNC1((void *)source,(void *)copy,len);
}