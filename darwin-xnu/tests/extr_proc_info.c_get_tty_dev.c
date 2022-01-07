
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stat {scalar_t__ st_rdev; } ;


 int stat (int ,struct stat*) ;
 int ttyname (int) ;

uint32_t
get_tty_dev()
{
 struct stat buf;
 stat(ttyname(1), &buf);
 return ((uint32_t)buf.st_rdev);
}
