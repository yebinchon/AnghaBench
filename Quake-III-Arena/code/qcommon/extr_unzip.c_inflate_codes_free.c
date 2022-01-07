
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z_streamp ;
typedef int inflate_codes_statef ;


 int Tracev (char*) ;
 int ZFREE (int ,int *) ;

void inflate_codes_free(inflate_codes_statef *c, z_streamp z)
{
  ZFREE(z, c);
  Tracev(("inflate:       codes free\n"));
}
