
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rarch_main_wrap {char* content_path; char* sram_path; char* state_path; char* config_path; char* libretro_path; scalar_t__ verbose; } ;


 int MSG_NO_CONTENT_STARTING_DUMMY_CORE ;
 int RARCH_LOG (char*,...) ;
 int msg_hash_to_str (int ) ;
 char* strdup (char*) ;

__attribute__((used)) static void content_load_init_wrap(
      const struct rarch_main_wrap *args,
      int *argc, char **argv)
{
   int i;

   *argc = 0;
   argv[(*argc)++] = strdup("retroarch");

   if (args->content_path)
   {
      RARCH_LOG("Using content: %s.\n", args->content_path);
      argv[(*argc)++] = strdup(args->content_path);
   }
   if (args->sram_path)
   {
      argv[(*argc)++] = strdup("-s");
      argv[(*argc)++] = strdup(args->sram_path);
   }

   if (args->state_path)
   {
      argv[(*argc)++] = strdup("-S");
      argv[(*argc)++] = strdup(args->state_path);
   }

   if (args->config_path)
   {
      argv[(*argc)++] = strdup("-c");
      argv[(*argc)++] = strdup(args->config_path);
   }
   if (args->verbose)
      argv[(*argc)++] = strdup("-v");

   for (i = 0; i < *argc; i++)
      RARCH_LOG("arg #%d: %s\n", i, argv[i]);
}
