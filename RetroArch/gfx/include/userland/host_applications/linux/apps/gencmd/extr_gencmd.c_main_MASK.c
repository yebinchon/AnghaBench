#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ clock_t ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  VCHI_INSTANCE_T ;
typedef  int /*<<< orphan*/  VCHI_CONNECTION_T ;

/* Variables and functions */
 double CLOCKS_PER_SEC ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int FUNC6 (char*,int) ; 
 int FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 size_t FUNC14 (char*,char*,int,size_t) ; 

int FUNC15( int argc, char **argv )
{
   int instNum = 0;
   VCHI_INSTANCE_T vchi_instance;
   VCHI_CONNECTION_T *vchi_connection = NULL;

   if ( argc > 1 )
   {
       if (( FUNC4( argv[1], "0" ) == 0 ) || ( FUNC4( argv[1], "1" ) == 0 ))
       {
           instNum = FUNC0( argv[1] );
           argv++;
           argc--;
       }
   }

   FUNC13();

    if ( FUNC12( &vchi_instance ) != 0)
    {
        FUNC3( "VCHI initialization failed\n" );
        return -1;
    }

    //create a vchi connection
    if ( FUNC10( NULL, 0, vchi_instance ) != 0)
    {
        FUNC3( "VCHI connection failed\n" );
        return -1;
    }

    FUNC9(vchi_instance, &vchi_connection, 1 );

    if (argc > 1)
    {
      int i = 1;
      char buffer[ 1024 ];
      size_t buffer_offset = 0;
      clock_t before=0, after=0;
      double time_diff;
      uint32_t show_time = 0;
      int ret;

      //reset the string
      buffer[0] = '\0';

      //first, strip out a potential leading -t
      if( FUNC4( argv[1], "-t" ) == 0 )
      {
         show_time = 1;
         i++;
      }

      for (; i <= argc-1; i++)
      {
         buffer_offset = FUNC14( buffer, argv[i], sizeof(buffer), buffer_offset );
         buffer_offset = FUNC14( buffer, " ", sizeof(buffer), buffer_offset );
      }

      if( show_time )
         before = FUNC1();

      //send the gencmd for the argument
      if (( ret = FUNC7( "%s", buffer )) != 0 )
      {
          FUNC3( "vc_gencmd_send returned %d\n", ret );
      }

      //get + print out the response!
      if (( ret = FUNC6( buffer, sizeof( buffer ) )) != 0 )
      {
          FUNC3( "vc_gencmd_read_response returned %d\n", ret );
      }

      if( show_time )
         after = FUNC1();

      if( show_time )
      {
         time_diff = ((double) (after - before)) / CLOCKS_PER_SEC;

         FUNC3( "Time took %f seconds (%f msecs) (%f usecs)\n", time_diff, time_diff * 1000, time_diff * 1000000 );
      }

      if ( buffer[0] != '\0' )
      {
          if ( buffer[ FUNC5( buffer) - 1] == '\n' )
          {
              FUNC2( buffer, stdout );
          }
          else
          {
              FUNC3("%s\n", buffer );
          }
      }
    }

    FUNC8();

    //close the vchi connection
    if ( FUNC11( vchi_instance ) != 0)
    {
        FUNC3( "VCHI disconnect failed\n" );
        return -1;
    }

   return 0;
}