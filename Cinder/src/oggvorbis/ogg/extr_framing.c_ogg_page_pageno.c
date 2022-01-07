
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* header; } ;
typedef TYPE_1__ ogg_page ;



long ogg_page_pageno(const ogg_page *og){
  return(og->header[18] |
         (og->header[19]<<8) |
         (og->header[20]<<16) |
         (og->header[21]<<24));
}
