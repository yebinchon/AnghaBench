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
typedef  int /*<<< orphan*/  response ;
typedef  scalar_t__ VCHIQ_INSTANCE_T ;

/* Variables and functions */
 scalar_t__ VCHIQ_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  global_connection ; 
 scalar_t__ global_initialise_instance ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

void FUNC16(void)
{
   VCHIQ_INSTANCE_T vchiq_instance;
   static int initted;
   int success = -1;
   char response[ 128 ];

   if (initted)
	return;
   initted = 1;
   FUNC14();

   if (FUNC12(&vchiq_instance) != VCHIQ_SUCCESS)
   {
      FUNC1("* failed to open vchiq instance\n");
      FUNC0(-1);
   }

   FUNC15("vchi_initialise");
   success = FUNC10( &global_initialise_instance);
   FUNC13(success == 0);
   vchiq_instance = (VCHIQ_INSTANCE_T)global_initialise_instance;

   global_connection = FUNC9(FUNC2(),
                                              FUNC11());

   FUNC15("vchi_connect");
   FUNC8(&global_connection, 1, global_initialise_instance);

   FUNC6 (global_initialise_instance, &global_connection, 1);
   FUNC5 (global_initialise_instance, &global_connection, 1);
   FUNC7 (global_initialise_instance, &global_connection, 1);
   FUNC4 (global_initialise_instance, &global_connection, 1);
   //vc_vchi_bufman_init (global_initialise_instance, &global_connection, 1);

   if ( success == 0 )
   {
      success = FUNC3( response, sizeof(response), "set_vll_dir /sd/vlls" );
      FUNC13( success == 0 );
   }
}