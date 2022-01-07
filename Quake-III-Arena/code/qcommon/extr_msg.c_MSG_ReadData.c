
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_t ;
typedef int byte ;


 int MSG_ReadByte (int *) ;

void MSG_ReadData( msg_t *msg, void *data, int len ) {
 int i;

 for (i=0 ; i<len ; i++) {
  ((byte *)data)[i] = MSG_ReadByte (msg);
 }
}
