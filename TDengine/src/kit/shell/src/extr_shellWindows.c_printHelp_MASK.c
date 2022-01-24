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
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2() {
  char indent[10] = "        ";
  FUNC1("taos shell is used to test the TDEngine database\n");

  FUNC1("%s%s\n", indent, "-h");
  FUNC1("%s%s%s\n", indent, indent, "TDEngine server IP address to connect. The default host is localhost.");
  FUNC1("%s%s\n", indent, "-p");
  FUNC1("%s%s%s\n", indent, indent, "The password to use when connecting to the server.");
  FUNC1("%s%s\n", indent, "-P");
  FUNC1("%s%s%s\n", indent, indent, "The TCP/IP port number to use for the connection");
  FUNC1("%s%s\n", indent, "-u");
  FUNC1("%s%s%s\n", indent, indent, "The TDEngine user name to use when connecting to the server.");
  FUNC1("%s%s\n", indent, "-c");
  FUNC1("%s%s%s\n", indent, indent, "Configuration directory.");
  FUNC1("%s%s\n", indent, "-s");
  FUNC1("%s%s%s\n", indent, indent, "Commands to run without enter the shell.");
  FUNC1("%s%s\n", indent, "-r");
  FUNC1("%s%s%s\n", indent, indent, "Output time as unsigned long..");
  FUNC1("%s%s\n", indent, "-f");
  FUNC1("%s%s%s\n", indent, indent, "Script to run without enter the shell.");
  FUNC1("%s%s\n", indent, "-d");
  FUNC1("%s%s%s\n", indent, indent, "Database to use when connecting to the server.");
  FUNC1("%s%s\n", indent, "-t");
  FUNC1("%s%s%s\n", indent, indent, "Time zone of the shell, default is local.");

  FUNC0(EXIT_SUCCESS);
}