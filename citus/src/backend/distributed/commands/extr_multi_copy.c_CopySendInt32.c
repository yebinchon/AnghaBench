
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef scalar_t__ int32 ;
typedef int buf ;
typedef int CopyOutState ;


 int CopySendData (int ,int *,int) ;
 int htonl (int ) ;

__attribute__((used)) static void
CopySendInt32(CopyOutState outputState, int32 val)
{
 uint32 buf = htonl((uint32) val);
 CopySendData(outputState, &buf, sizeof(buf));
}
