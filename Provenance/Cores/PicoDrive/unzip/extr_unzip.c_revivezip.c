
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fp; int zip; } ;
typedef TYPE_1__ ZIP ;


 scalar_t__ fopen (int ,char*) ;

__attribute__((used)) static ZIP* revivezip(ZIP* zip) {
 if (!zip->fp) {
  zip->fp = fopen(zip->zip, "rb");
  if (!zip->fp) {
   return 0;
  }
 }
 return zip;

}
