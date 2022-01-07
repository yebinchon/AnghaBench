
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ blksize; } ;
typedef TYPE_1__ tftp_state_data_t ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLE_TFTP_ILLEGAL ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static CURLcode tftp_option_add(tftp_state_data_t *state, size_t *csize,
                                char *buf, const char *option)
{
  if(( strlen(option) + *csize + 1) > (size_t)state->blksize)
    return CURLE_TFTP_ILLEGAL;
  strcpy(buf, option);
  *csize += strlen(option) + 1;
  return CURLE_OK;
}
