
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bba_priv {int linkstate; } ;


 int BBA_NWAYS ;
 int BBA_NWAYS_LS10 ;
 int BBA_NWAYS_LS100 ;
 int bba_in8 (int ) ;

__attribute__((used)) static __inline__ u8 __linkstate(struct bba_priv *priv)
{
 u8 nways = 0;

 nways = bba_in8(BBA_NWAYS);
 priv->linkstate = nways;
 if(nways&BBA_NWAYS_LS10 || nways&BBA_NWAYS_LS100) return nways;
 return 0;
}
