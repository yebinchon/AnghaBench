
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RARCH_LOG (char*) ;

__attribute__((used)) static void overlay_free(void)
{
    RARCH_LOG("[LED]: overlay LED driver free\n");
}
