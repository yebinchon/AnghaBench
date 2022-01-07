
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int at_start; int limit; int is_zero; scalar_t__ number_was_valid; scalar_t__ is_negative; scalar_t__ state; scalar_t__ cdigits_in_state; int check_state; scalar_t__ cnumber; } ;
typedef TYPE_1__ checkfp_control ;
struct TYPE_6__ {int limit; int ctimes; int cmillions; int cinvalid; scalar_t__ cnoaccept; int verbose; scalar_t__* number; } ;
typedef TYPE_2__ checkfp_command ;


 int atoi (char*) ;
 int check_all_characters (TYPE_2__*,TYPE_1__) ;
 int fprintf (int ,char*,char*) ;
 int printf (char*,char*,int,int,int,int,int) ;
 int start ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int verbose ;

int validation_checkfp(int count, int argc, char **argv)
{
   int result;
   checkfp_command command;
   checkfp_control control;

   command.number[0] = 0;
   command.limit = 3;
   command.verbose = verbose;
   command.ctimes = 0;
   command.cmillions = 0;
   command.cinvalid = 0;
   command.cnoaccept = 0;

   while (--argc > 0)
   {
      ++argv;
      if (argc > 1 && strcmp(*argv, "-l") == 0)
      {
         --argc;
         command.limit = atoi(*++argv);
      }

      else
      {
         fprintf(stderr, "unknown argument %s\n", *argv);
         return 1;
      }
   }

   control.cnumber = 0;
   control.check_state = start;
   control.at_start = 1;
   control.cdigits_in_state = 0;
   control.limit = command.limit;
   control.state = 0;
   control.is_negative = 0;
   control.is_zero = 1;
   control.number_was_valid = 0;

   result = check_all_characters(&command, control);

   printf("checkfp: %s: checked %d,%.3d,%.3d,%.3d strings (%d invalid)\n",
      result ? "pass" : "FAIL", command.cmillions / 1000,
      command.cmillions % 1000, command.ctimes / 1000, command.ctimes % 1000,
      command.cinvalid);

   return result;
}
