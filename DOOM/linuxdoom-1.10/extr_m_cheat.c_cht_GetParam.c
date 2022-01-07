
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* sequence; } ;
typedef TYPE_1__ cheatseq_t ;



void
cht_GetParam
( cheatseq_t* cht,
  char* buffer )
{

    unsigned char *p, c;

    p = cht->sequence;
    while (*(p++) != 1);

    do
    {
 c = *p;
 *(buffer++) = c;
 *(p++) = 0;
    }
    while (c && *p!=0xff );

    if (*p==0xff)
 *buffer = 0;

}
