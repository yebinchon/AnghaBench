
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fp; int data; } ;
typedef TYPE_1__ curl_mimepart ;


 scalar_t__ fopen_read (int ,char*) ;

__attribute__((used)) static int mime_open_file(curl_mimepart * part)
{


  if(part->fp)
    return 0;
  part->fp = fopen_read(part->data, "rb");
  return part->fp? 0: -1;
}
