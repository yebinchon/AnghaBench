
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_t ;


 int MSG_ReadBits (int *,int) ;

float MSG_ReadDeltaKeyFloat( msg_t *msg, int key, float oldV ) {
 if ( MSG_ReadBits( msg, 1 ) ) {
  float newV;

  *(int *)&newV = MSG_ReadBits( msg, 32 ) ^ key;
  return newV;
 }
 return oldV;
}
