
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct classic_ctrl_t {int dummy; } ;


 int memset (struct classic_ctrl_t*,int ,int) ;

void classic_ctrl_disconnected(struct classic_ctrl_t* cc)
{
 memset(cc, 0, sizeof(struct classic_ctrl_t));
}
