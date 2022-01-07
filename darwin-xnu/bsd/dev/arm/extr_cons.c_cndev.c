
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int dev_t ;
struct TYPE_4__ {int t_dev; } ;
struct TYPE_3__ {int t_dev; } ;


 TYPE_2__* constty ;
 TYPE_1__** km_tty ;

__attribute__((used)) static dev_t
cndev(void)
{
 if (constty)
  return constty->t_dev;
 else
  return km_tty[0]->t_dev;
}
