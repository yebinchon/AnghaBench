
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* count; int* state; } ;
typedef int POINTER ;
typedef TYPE_1__ MD4_CTX ;


 int Com_Memset (int ,int ,int) ;
 int Encode (unsigned char*,int*,int) ;
 int MD4Update (TYPE_1__*,unsigned char*,int) ;
 unsigned char* PADDING ;

void MD4Final (unsigned char digest[16], MD4_CTX *context)
{
 unsigned char bits[8];
 unsigned int index, padLen;


 Encode (bits, context->count, 8);


 index = (unsigned int)((context->count[0] >> 3) & 0x3f);
 padLen = (index < 56) ? (56 - index) : (120 - index);
 MD4Update (context, PADDING, padLen);


 MD4Update (context, bits, 8);


 Encode (digest, context->state, 16);


 Com_Memset ((POINTER)context, 0, sizeof (*context));
}
