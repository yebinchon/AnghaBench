
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
typedef int u32 ;



__attribute__((used)) static __inline__ u32 __get_fontsize(void *buffer)
{
 u8 *ptr = (u8*)buffer;

 if(ptr[0]=='Y' && ptr[1]=='a' && ptr[2]=='y') return (((u32*)ptr)[1]);
 else return 0;
}
