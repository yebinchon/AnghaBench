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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static void FUNC1(char *program_name)
{
   FUNC0(NULL, "Usage:");
   FUNC0(NULL, "  %s [opts] <uri>", program_name);
   FUNC0(NULL, "Reads RTP packets from <uri>, decodes to standard output.");
   FUNC0(NULL, "Press the escape key to terminate the program.");
   FUNC0(NULL, "Options:");
   FUNC0(NULL, "  -h   Print this information");
   FUNC0(NULL, "  -s x Save packets to URI x");
   FUNC0(NULL, "  -v   Dump standard packet header");
   FUNC0(NULL, "  -vv  Dump entire header");
   FUNC0(NULL, "  -vvv Dump entire header and data");
}