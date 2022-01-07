
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg_t ;


 int MSG_WriteBits (int *,int,int) ;

void MSG_WriteLong( msg_t *sb, int c ) {
 MSG_WriteBits( sb, c, 32 );
}
