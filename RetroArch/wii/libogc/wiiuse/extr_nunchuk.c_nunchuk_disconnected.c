
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nunchuk_t {int dummy; } ;


 int memset (struct nunchuk_t*,int ,int) ;

void nunchuk_disconnected(struct nunchuk_t* nc)
{

 memset(nc, 0, sizeof(struct nunchuk_t));
}
