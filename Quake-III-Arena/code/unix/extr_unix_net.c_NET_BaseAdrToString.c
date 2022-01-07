
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int s ;
struct TYPE_3__ {int * ip; } ;
typedef TYPE_1__ netadr_t ;


 int Com_sprintf (char*,int,char*,int ,int ,int ,int ) ;

char *NET_BaseAdrToString (netadr_t a)
{
 static char s[64];

 Com_sprintf (s, sizeof(s), "%i.%i.%i.%i", a.ip[0], a.ip[1], a.ip[2], a.ip[3]);

 return s;
}
