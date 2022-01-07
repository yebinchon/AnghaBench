
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;


 void** hexchars ;
 int thread2fhstr (char*,int) ;

void packqmheader(char *out,s32 count,s32 done,s32 athread)
{
 *out++ = 'q';
 *out++ = 'M';
 *out++ = hexchars[(count>>4)&0x0f];
 *out++ = hexchars[count&0x0f];

 if(done) *out++ = '1';
 else *out++ = '0';

 thread2fhstr(out,athread);
}
