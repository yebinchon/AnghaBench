
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int value ;
typedef int UINT ;
struct TYPE_3__ {int IsRawSocket; int RawIP_HeaderIncludeFlag; int socket; } ;
typedef TYPE_1__ SOCK ;


 int BOOL_TO_INT (int) ;
 int IPPROTO_IP ;
 int IP_HDRINCL ;
 int setsockopt (int ,int ,int ,char*,int) ;

void SetRawSockHeaderIncludeOption(SOCK *s, bool enable)
{
 UINT value = BOOL_TO_INT(enable);
 if (s == ((void*)0) || s->IsRawSocket == 0)
 {
  return;
 }

 (void)setsockopt(s->socket, IPPROTO_IP, IP_HDRINCL, (char *)&value, sizeof(value));

 s->RawIP_HeaderIncludeFlag = enable;
}
