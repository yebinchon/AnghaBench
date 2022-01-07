
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ fsaFdSd ;
 scalar_t__ initialized ;
 scalar_t__ sdioFd ;

__attribute__((used)) static bool IOSUHAX_sdio_isInserted(void)
{

    return initialized && (fsaFdSd >= 0) && (sdioFd >= 0);
}
