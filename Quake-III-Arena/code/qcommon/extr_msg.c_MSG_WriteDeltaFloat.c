
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_t ;


 int MSG_WriteBits (int *,int,int) ;

void MSG_WriteDeltaFloat( msg_t *msg, float oldV, float newV ) {
 if ( oldV == newV ) {
  MSG_WriteBits( msg, 0, 1 );
  return;
 }
 MSG_WriteBits( msg, 1, 1 );
 MSG_WriteBits( msg, *(int *)&newV, 32 );
}
