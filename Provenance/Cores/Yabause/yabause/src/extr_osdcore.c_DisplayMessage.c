
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSDMSG_STATUS ;
 int OSDPushMessage (int ,int,char const*) ;

void DisplayMessage(const char* str)
{
   OSDPushMessage(OSDMSG_STATUS, 120, str);
}
