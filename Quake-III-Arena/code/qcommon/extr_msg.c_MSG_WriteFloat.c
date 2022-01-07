
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_t ;


 int MSG_WriteBits (int *,int,int) ;

void MSG_WriteFloat( msg_t *sb, float f ) {
 union {
  float f;
  int l;
 } dat;

 dat.f = f;
 MSG_WriteBits( sb, dat.l, 32 );
}
