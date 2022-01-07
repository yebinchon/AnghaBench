
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bba_priv {int dummy; } ;


 int TB_USPERSEC ;
 int __linkstate (struct bba_priv*) ;
 int udelay (int) ;

__attribute__((used)) static bool __bba_get_linkstateasync(struct bba_priv *priv)
{
 u32 ret,cnt,sec;

 for(cnt=0;cnt<10000;cnt++) {
  udelay(500);
  ret = __linkstate(priv);

  if(ret&0xf0 && ret&0x08) break;
 }


 if(cnt<10000) {
  sec = 1;
  if(!(ret&0x04)) sec = 2;
  udelay(sec*TB_USPERSEC);
 }

 return (cnt<10000);
}
