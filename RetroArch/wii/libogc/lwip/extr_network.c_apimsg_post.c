
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct api_msg {int dummy; } ;


 int net_apimsg (struct api_msg*) ;

__attribute__((used)) static void apimsg_post(struct api_msg *msg)
{
 net_apimsg(msg);
}
