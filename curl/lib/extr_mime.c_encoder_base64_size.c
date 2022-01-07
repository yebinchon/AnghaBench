
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int curl_off_t ;
struct TYPE_3__ {int datasize; } ;
typedef TYPE_1__ curl_mimepart ;


 int MAX_ENCODED_LINE_LENGTH ;

__attribute__((used)) static curl_off_t encoder_base64_size(curl_mimepart *part)
{
  curl_off_t size = part->datasize;

  if(size <= 0)
    return size;


  size = 4 * (1 + (size - 1) / 3);


  return size + 2 * ((size - 1) / MAX_ENCODED_LINE_LENGTH);
}
