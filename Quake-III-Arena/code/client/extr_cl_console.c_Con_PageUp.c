
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ display; scalar_t__ current; scalar_t__ totallines; } ;


 TYPE_1__ con ;

void Con_PageUp( void ) {
 con.display -= 2;
 if ( con.current - con.display >= con.totallines ) {
  con.display = con.current - con.totallines + 1;
 }
}
