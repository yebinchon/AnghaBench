
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_t ;
typedef int byte ;


 int MSG_WriteByte (int *,int ) ;

void MSG_WriteData( msg_t *buf, const void *data, int length ) {
 int i;
 for(i=0;i<length;i++) {
  MSG_WriteByte(buf, ((byte *)data)[i]);
 }
}
