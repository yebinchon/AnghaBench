
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd6_prproxy_solsrc {int dummy; } ;


 int solsrc_zone ;
 int zfree (int ,struct nd6_prproxy_solsrc*) ;

__attribute__((used)) static void
nd6_solsrc_free(struct nd6_prproxy_solsrc *ssrc)
{
 zfree(solsrc_zone, ssrc);
}
