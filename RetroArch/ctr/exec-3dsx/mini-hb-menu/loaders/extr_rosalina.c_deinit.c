
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hbldrHandle ;
 int svcCloseHandle (int ) ;

__attribute__((used)) static void deinit(void)
{
 svcCloseHandle(hbldrHandle);
}
