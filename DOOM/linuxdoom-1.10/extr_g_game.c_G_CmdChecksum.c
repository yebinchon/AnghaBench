
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ticcmd_t ;



int G_CmdChecksum (ticcmd_t* cmd)
{
    int i;
    int sum = 0;

    for (i=0 ; i< sizeof(*cmd)/4 - 1 ; i++)
 sum += ((int *)cmd)[i];

    return sum;
}
