
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REPEAT ;
 int dummy_outline_1 ;
 int dummy_outline_2 ;
 int dummy_outline_3 ;
 int printf (char*) ;
 int profile_outline (int *,int ) ;

int main( int argc, char** argv )
  {
    printf( "outline #1\n" );
    profile_outline( &dummy_outline_1, REPEAT );

    printf( "outline #2\n" );
    profile_outline( &dummy_outline_2, REPEAT );

    printf( "outline #3\n" );
    profile_outline( &dummy_outline_3, REPEAT );

    return 0;
  }
