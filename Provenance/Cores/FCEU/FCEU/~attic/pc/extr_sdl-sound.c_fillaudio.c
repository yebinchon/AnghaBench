
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ int16 ;


 scalar_t__* Buffer ;
 scalar_t__ BufferIn ;
 size_t BufferRead ;
 size_t BufferSize ;

__attribute__((used)) static void fillaudio(void *udata, uint8 *stream, int len)
{
 int16 *tmps = (int16*)stream;
 len >>= 1;

 while(len)
 {
  int16 sample = 0;
  if(BufferIn)
  {
   sample = Buffer[BufferRead];
   BufferRead = (BufferRead + 1) % BufferSize;
   BufferIn--;
  }
  else sample = 0;

  *tmps = sample;
  tmps++;
  len--;
 }
}
