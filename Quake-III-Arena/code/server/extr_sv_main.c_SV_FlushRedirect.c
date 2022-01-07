
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int redirectAddress; } ;


 int NET_OutOfBandPrint (int ,int ,char*,char*) ;
 int NS_SERVER ;
 TYPE_1__ svs ;

void SV_FlushRedirect( char *outputbuf ) {
 NET_OutOfBandPrint( NS_SERVER, svs.redirectAddress, "print\n%s", outputbuf );
}
