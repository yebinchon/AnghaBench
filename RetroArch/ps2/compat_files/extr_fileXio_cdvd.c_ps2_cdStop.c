
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDVD_Stop () ;
 int sceCdSync (int ) ;

__attribute__((used)) static void ps2_cdStop(void)
{
   CDVD_Stop();
   sceCdSync(0);
}
