
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ param; } ;
typedef TYPE_2__ xvid_plg_create_t ;
struct xvid_ff_pass1 {TYPE_1__* context; } ;
struct TYPE_4__ {char* twopassbuffer; } ;


 int BUFFER_CAT (char*) ;
 int BUFFER_REMAINING (char*) ;
 int XVID_ERR_FAIL ;
 int XVID_VERSION ;
 int XVID_VERSION_MAJOR (int ) ;
 int XVID_VERSION_MINOR (int ) ;
 int XVID_VERSION_PATCH (int ) ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static int xvid_ff_2pass_create(xvid_plg_create_t *param, void **handle)
{
    struct xvid_ff_pass1 *x = (struct xvid_ff_pass1 *) param->param;
    char *log = x->context->twopassbuffer;


    if (!log)
        return XVID_ERR_FAIL;



    log[0] = 0;
    snprintf(log, BUFFER_REMAINING(log),
             "# ffmpeg 2-pass log file, using xvid codec\n");
    snprintf(BUFFER_CAT(log), BUFFER_REMAINING(log),
             "# Do not modify. libxvidcore version: %d.%d.%d\n\n",
             XVID_VERSION_MAJOR(XVID_VERSION),
             XVID_VERSION_MINOR(XVID_VERSION),
             XVID_VERSION_PATCH(XVID_VERSION));

    *handle = x->context;
    return 0;
}
