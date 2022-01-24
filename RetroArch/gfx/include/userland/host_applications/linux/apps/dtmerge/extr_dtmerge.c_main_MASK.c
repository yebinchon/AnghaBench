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
typedef  int /*<<< orphan*/  DTBLOB_T ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,void const*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 int FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 

int FUNC14(int argc, char **argv)
{
   const char *base_file;
   const char *merged_file;
   const char *overlay_file;
   DTBLOB_T *base_dtb;
   DTBLOB_T *overlay_dtb;
   int err;
   int argn = 1;
   int max_dtb_size = 100000;

   while ((argn < argc) && (argv[argn][0] == '-'))
   {
      const char *arg = argv[argn++];
      if ((FUNC11(arg, "-d") == 0) ||
          (FUNC11(arg, "--debug") == 0))
         FUNC1(1);
      else if ((FUNC11(arg, "-h") == 0) ||
          (FUNC11(arg, "--help") == 0))
         FUNC13();
      else
      {
         FUNC10("* Unknown option '%s'\n", arg);
         FUNC13();
      }
   }

   if (argc < (argn + 3))
   {
      FUNC13();
   }

   base_file = argv[argn++];
   merged_file = argv[argn++];
   overlay_file = argv[argn++];

   base_dtb = FUNC5(base_file, max_dtb_size);
   if (!base_dtb)
   {
       FUNC10("* failed to load '%s'\n", base_file);
       return -1;
   }

   err = FUNC9(base_dtb, "i2c", "i2c0");
   err = FUNC9(base_dtb, "i2c_arm", "i2c0");
   err = FUNC9(base_dtb, "i2c_vc", "i2c1");
   err = FUNC9(base_dtb, "i2c_baudrate", "i2c0_baudrate");
   err = FUNC9(base_dtb, "i2c_arm_baudrate", "i2c0_baudrate");
   err = FUNC9(base_dtb, "i2c_vc_baudrate", "i2c1_baudrate");

   if (FUNC11(overlay_file, "-") == 0)
   {
      overlay_dtb = base_dtb;
   }
   else
   {
      overlay_dtb = FUNC5(overlay_file, max_dtb_size);
      if (overlay_dtb)
	  err = FUNC3(base_dtb, overlay_dtb);
      else
	  err = -1;
   }

   while (!err && (argn < argc))
   {
      char *param_name = argv[argn++];
      char *param_value = param_name + FUNC12(param_name, "=");
      const void *override_data;
      int data_len;

      if (*param_value == '=')
      {
         *(param_value++) = '\0';
      }
      else
      {
         /* This isn't a well-formed parameter assignment, but it can be
            treated as an assignment of true. */
         param_value = "true";
      }

      override_data = FUNC2(overlay_dtb, param_name,
                                              &data_len);
      if (override_data)
      {
         err = FUNC0(overlay_dtb, param_name,
                                        override_data, data_len,
                                        param_value);
      }
      else
      {
         override_data = FUNC2(base_dtb, param_name, &data_len);
         if (override_data)
         {
            err = FUNC0(base_dtb, param_name,
                                           override_data, data_len,
                                           param_value);
         }
         else
         {
            FUNC10("* unknown param '%s'\n", param_name);
            err = data_len;
         }
      }
   }

   if (!err && (overlay_dtb != base_dtb))
   {
      err = FUNC6(base_dtb, overlay_dtb);

      FUNC4(overlay_dtb);
   }

   if (!err)
   {
      FUNC7(base_dtb);
      err = FUNC8(base_dtb, merged_file);
   }

   FUNC4(base_dtb);

   if (err != 0)
      FUNC10("* Exiting with error code %d\n", err);

   return err;
}