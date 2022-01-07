
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* p; int* sequence; } ;
typedef TYPE_1__ cheatseq_t ;


 int SCRAMBLE (int) ;
 int* cheat_xlate_table ;
 scalar_t__ firsttime ;

int
cht_CheckCheat
( cheatseq_t* cht,
  char key )
{
    int i;
    int rc = 0;

    if (firsttime)
    {
 firsttime = 0;
 for (i=0;i<256;i++) cheat_xlate_table[i] = SCRAMBLE(i);
    }

    if (!cht->p)
 cht->p = cht->sequence;

    if (*cht->p == 0)
 *(cht->p++) = key;
    else if
 (cheat_xlate_table[(unsigned char)key] == *cht->p) cht->p++;
    else
 cht->p = cht->sequence;

    if (*cht->p == 1)
 cht->p++;
    else if (*cht->p == 0xff)
    {
 cht->p = cht->sequence;
 rc = 1;
    }

    return rc;
}
