
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blip_t ;


 int free (int *) ;
 int memset (int *,int ,int) ;

void blip_delete( blip_t* m )
{
 if ( m != ((void*)0) )
 {

  memset( m, 0, sizeof *m );
  free( m );
 }
}
