
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* pBuffer; } ;
typedef TYPE_1__ OMX_BUFFERHEADERTYPE ;



__attribute__((used)) static unsigned char *vcilcs_mem_lock(OMX_BUFFERHEADERTYPE *buffer)
{
   return buffer->pBuffer;
}
