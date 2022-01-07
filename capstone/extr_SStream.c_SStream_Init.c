
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buffer; scalar_t__ index; } ;
typedef TYPE_1__ SStream ;



void SStream_Init(SStream *ss)
{
 ss->index = 0;
 ss->buffer[0] = '\0';
}
