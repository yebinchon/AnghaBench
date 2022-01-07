
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int curl_off_t ;
struct TYPE_3__ {int datasize; } ;
typedef TYPE_1__ curl_mimepart ;



__attribute__((used)) static curl_off_t encoder_nop_size(curl_mimepart *part)
{
  return part->datasize;
}
