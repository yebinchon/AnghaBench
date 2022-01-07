
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fp; } ;
typedef TYPE_1__ ZIP ;


 int fclose (scalar_t__) ;

void suspendzip(ZIP* zip) {
 if (zip->fp) {
  fclose(zip->fp);
  zip->fp = 0;
 }
}
