
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MESSAGE_OFFSET_EN ;
 scalar_t__ MESSAGE_OFFSET_JP ;
 int MsIsCurrentUserLocaleIdJapanese () ;
 scalar_t__ skip ;

void ViSetSkip()
{
 skip = 0;

 if (MsIsCurrentUserLocaleIdJapanese() == 0)
 {
  skip = MESSAGE_OFFSET_EN - MESSAGE_OFFSET_JP;
 }
}
