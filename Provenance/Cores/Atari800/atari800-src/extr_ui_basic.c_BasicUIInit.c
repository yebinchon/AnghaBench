
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMORY_GetCharset (int ) ;
 scalar_t__ TRUE ;
 int charset ;
 scalar_t__ initialised ;

__attribute__((used)) static void BasicUIInit(void)
{
 if (!initialised) {
  MEMORY_GetCharset(charset);
  initialised = TRUE;
 }
}
