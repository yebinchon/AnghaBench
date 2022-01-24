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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MIN ; 
 double MAXIMIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,double,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(void)
{
  int errors = 0;
  char buf[512]; /* larger than max float size */
  FUNC0(buf, sizeof(buf), "%f", 9.0);
  errors += FUNC2(buf, "9.000000");

  FUNC0(buf, sizeof(buf), "%.1f", 9.1);
  errors += FUNC2(buf, "9.1");

  FUNC0(buf, sizeof(buf), "%.2f", 9.1);
  errors += FUNC2(buf, "9.10");

  FUNC0(buf, sizeof(buf), "%.0f", 9.1);
  errors += FUNC2(buf, "9");

  FUNC0(buf, sizeof(buf), "%0f", 9.1);
  errors += FUNC2(buf, "9.100000");

  FUNC0(buf, sizeof(buf), "%10f", 9.1);
  errors += FUNC2(buf, "  9.100000");

  FUNC0(buf, sizeof(buf), "%10.3f", 9.1);
  errors += FUNC2(buf, "     9.100");

  FUNC0(buf, sizeof(buf), "%-10.3f", 9.1);
  errors += FUNC2(buf, "9.100     ");

  FUNC0(buf, sizeof(buf), "%-10.3f", 9.123456);
  errors += FUNC2(buf, "9.123     ");

  FUNC0(buf, sizeof(buf), "%.-2f", 9.1);
  errors += FUNC2(buf, "9.100000");

  FUNC0(buf, sizeof(buf), "%*f", 10, 9.1);
  errors += FUNC2(buf, "  9.100000");

  FUNC0(buf, sizeof(buf), "%*f", 3, 9.1);
  errors += FUNC2(buf, "9.100000");

  FUNC0(buf, sizeof(buf), "%*f", 6, 9.2987654);
  errors += FUNC2(buf, "9.298765");

  FUNC0(buf, sizeof(buf), "%*f", 6, 9.298765);
  errors += FUNC2(buf, "9.298765");

  FUNC0(buf, sizeof(buf), "%*f", 6, 9.29876);
  errors += FUNC2(buf, "9.298760");

  FUNC0(buf, sizeof(buf), "%.*f", 6, 9.2987654);
  errors += FUNC2(buf, "9.298765");
  FUNC0(buf, sizeof(buf), "%.*f", 5, 9.2987654);
  errors += FUNC2(buf, "9.29877");
  FUNC0(buf, sizeof(buf), "%.*f", 4, 9.2987654);
  errors += FUNC2(buf, "9.2988");
  FUNC0(buf, sizeof(buf), "%.*f", 3, 9.2987654);
  errors += FUNC2(buf, "9.299");
  FUNC0(buf, sizeof(buf), "%.*f", 2, 9.2987654);
  errors += FUNC2(buf, "9.30");
  FUNC0(buf, sizeof(buf), "%.*f", 1, 9.2987654);
  errors += FUNC2(buf, "9.3");
  FUNC0(buf, sizeof(buf), "%.*f", 0, 9.2987654);
  errors += FUNC2(buf, "9");

  /* very large precisions easily turn into system specific outputs so we only
     check the output buffer length here as we know the internal limit */

  FUNC0(buf, sizeof(buf), "%.*f", (1<<30), 9.2987654);
  errors += FUNC3(buf, 325);

  FUNC0(buf, sizeof(buf), "%10000.10000f", 9.2987654);
  errors += FUNC3(buf, 325);

  FUNC0(buf, sizeof(buf), "%240.10000f",
                 123456789123456789123456789.2987654);
  errors += FUNC3(buf, 325);

  /* check negative when used signed */
  FUNC0(buf, sizeof(buf), "%*f", INT_MIN, 9.1);
  errors += FUNC2(buf, "9.100000");

  /* curl_msnprintf() limits a single float output to 325 bytes maximum
     width */
  FUNC0(buf, sizeof(buf), "%*f", (1<<30), 9.1);
  errors += FUNC2(buf, "                                                                                                                                                                                                                                                                                                                             9.100000");
  FUNC0(buf, sizeof(buf), "%100000f", 9.1);
  errors += FUNC2(buf, "                                                                                                                                                                                                                                                                                                                             9.100000");

  FUNC0(buf, sizeof(buf), "%f", MAXIMIZE);
  errors += FUNC3(buf, 317);

  FUNC0(buf, 2, "%f", MAXIMIZE);
  errors += FUNC3(buf, 1);
  FUNC0(buf, 3, "%f", MAXIMIZE);
  errors += FUNC3(buf, 2);
  FUNC0(buf, 4, "%f", MAXIMIZE);
  errors += FUNC3(buf, 3);
  FUNC0(buf, 5, "%f", MAXIMIZE);
  errors += FUNC3(buf, 4);
  FUNC0(buf, 6, "%f", MAXIMIZE);
  errors += FUNC3(buf, 5);

  if(!errors)
    FUNC1("All float strings tests OK!\n");
  else
    FUNC1("test_float_formatting Failed!\n");

  return errors;
}