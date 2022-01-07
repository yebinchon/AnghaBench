
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ netadr_t ;


 int NA_LOOPBACK ;
 int memset (TYPE_1__*,int ,int) ;
 int strcmp (char*,char*) ;

qboolean NET_StringToAdr (char *s, netadr_t *a)
{
 if (!strcmp (s, "localhost")) {
  memset (a, 0, sizeof(*a));
  a->type = NA_LOOPBACK;
  return 1;
 }

 return 0;
}
