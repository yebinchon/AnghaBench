
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef scalar_t__ int16 ;
typedef int buf ;
typedef int CopyOutState ;


 int CopySendData (int ,int *,int) ;
 int htons (int ) ;

__attribute__((used)) static void
CopySendInt16(CopyOutState outputState, int16 val)
{
 uint16 buf = htons((uint16) val);
 CopySendData(outputState, &buf, sizeof(buf));
}
