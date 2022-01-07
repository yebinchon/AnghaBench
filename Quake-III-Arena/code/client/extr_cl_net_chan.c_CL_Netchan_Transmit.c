
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int netchan_t ;
struct TYPE_5__ {int data; int cursize; } ;
typedef TYPE_1__ msg_t ;


 int CL_Netchan_Encode (TYPE_1__*) ;
 int MSG_WriteByte (TYPE_1__*,int ) ;
 int Netchan_Transmit (int *,int ,int ) ;
 int clc_EOF ;

void CL_Netchan_Transmit( netchan_t *chan, msg_t* msg ) {
 MSG_WriteByte( msg, clc_EOF );

 CL_Netchan_Encode( msg );
 Netchan_Transmit( chan, msg->cursize, msg->data );
}
