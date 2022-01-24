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
typedef  int /*<<< orphan*/  rsound_t ;
typedef  enum rsd_format { ____Placeholder_rsd_format } rsd_format ;

/* Variables and functions */
 int /*<<< orphan*/  RSD_CHANNELS ; 
 int /*<<< orphan*/  RSD_FORMAT ; 
 int /*<<< orphan*/  RSD_HOST ; 
 int /*<<< orphan*/  RSD_IDENTITY ; 
 int /*<<< orphan*/  RSD_PORT ; 
 int /*<<< orphan*/  RSD_SAMPLERATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(rsound_t** rsound, const char* host, const char* port, const char* ident,
                     int rate, int channels, enum rsd_format format)
{
   if ( FUNC1(rsound) < 0 )
      return -1;

   int fmt = format;

   if ( host != NULL )
      FUNC2(*rsound, RSD_HOST, (void*)host);
   if ( port != NULL )
      FUNC2(*rsound, RSD_PORT, (void*)port);
   if ( ident != NULL )
      FUNC2(*rsound, RSD_IDENTITY, (void*)ident);

   if (  FUNC2(*rsound, RSD_SAMPLERATE, &rate) < 0 ||
         FUNC2(*rsound, RSD_CHANNELS, &channels) < 0 ||
         FUNC2(*rsound, RSD_FORMAT, &fmt) < 0 )
   {
      FUNC0(*rsound);
      return -1;
   }

   if ( FUNC3(*rsound) < 0 )
   {
      FUNC0(*rsound);
      return -1;
   }

   return 0;
}