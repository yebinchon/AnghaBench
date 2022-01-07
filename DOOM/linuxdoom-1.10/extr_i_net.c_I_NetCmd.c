
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ command; } ;


 scalar_t__ CMD_GET ;
 scalar_t__ CMD_SEND ;
 int I_Error (char*,scalar_t__) ;
 TYPE_1__* doomcom ;
 int netget () ;
 int netsend () ;

void I_NetCmd (void)
{
    if (doomcom->command == CMD_SEND)
    {
 netsend ();
    }
    else if (doomcom->command == CMD_GET)
    {
 netget ();
    }
    else
 I_Error ("Bad net cmd: %i\n",doomcom->command);
}
