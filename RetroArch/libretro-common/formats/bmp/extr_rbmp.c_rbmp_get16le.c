
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rbmp_context ;


 int rbmp_get8 (int *) ;

__attribute__((used)) static int rbmp_get16le(rbmp_context *s)
{
   return rbmp_get8(s) + (rbmp_get8(s) << 8);
}
