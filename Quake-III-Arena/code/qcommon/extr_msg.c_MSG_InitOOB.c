
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int maxsize; int oob; int * data; } ;
typedef TYPE_1__ msg_t ;
typedef int byte ;


 int Com_Memset (TYPE_1__*,int ,int) ;
 int MSG_initHuffman () ;
 int msgInit ;
 int qtrue ;

void MSG_InitOOB( msg_t *buf, byte *data, int length ) {
 if (!msgInit) {
  MSG_initHuffman();
 }
 Com_Memset (buf, 0, sizeof(*buf));
 buf->data = data;
 buf->maxsize = length;
 buf->oob = qtrue;
}
