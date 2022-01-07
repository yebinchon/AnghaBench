
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int s8_t ;
typedef int s32 ;


 int UIP_ERR_IF ;
 int UIP_ERR_OK ;
 int UIP_LOG (char*) ;
 int bba_devpoll (int*) ;

__attribute__((used)) static s8_t bba_dochallengeresponse()
{
 u16 status;
 s32 cnt;

 UIP_LOG("bba_dochallengeresponse()\n");

 cnt = 0;
 do {
  cnt++;
  bba_devpoll(&status);
  if(status==0x1000) cnt = 0;
 } while(cnt<100 && !(status&0x0800));

 if(cnt>=1000) return UIP_ERR_IF;
 return UIP_ERR_OK;
}
