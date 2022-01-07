
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bba_priv {int dummy; } ;


 int EXI_CHANNEL_0 ;
 int EXI_Unlock (int ) ;

__attribute__((used)) static __inline__ void __bba_exi_wake(struct bba_priv *priv)
{
 EXI_Unlock(EXI_CHANNEL_0);
}
