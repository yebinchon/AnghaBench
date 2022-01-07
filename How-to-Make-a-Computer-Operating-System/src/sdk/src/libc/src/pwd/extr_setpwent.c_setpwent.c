
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _passwd_db_position ;

void setpwent( void ) {
    _passwd_db_position = 0;
}
