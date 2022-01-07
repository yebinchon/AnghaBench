
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buffer; int index; } ;
typedef TYPE_1__ SStream ;


 int memcpy (char*,char const*,unsigned int) ;
 scalar_t__ strlen (char const*) ;

void SStream_concat0(SStream *ss, const char *s)
{

 unsigned int len = (unsigned int) strlen(s);

 memcpy(ss->buffer + ss->index, s, len);
 ss->index += len;
 ss->buffer[ss->index] = '\0';

}
