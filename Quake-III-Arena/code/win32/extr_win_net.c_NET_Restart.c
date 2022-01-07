
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NET_Config (int ) ;
 int networkingEnabled ;

void NET_Restart( void ) {
 NET_Config( networkingEnabled );
}
