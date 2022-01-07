
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_t ;


 int MSG_ReadBits (int *,int) ;

int MSG_ReadDelta( msg_t *msg, int oldV, int bits ) {
 if ( MSG_ReadBits( msg, 1 ) ) {
  return MSG_ReadBits( msg, bits );
 }
 return oldV;
}
