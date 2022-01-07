
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_cf; } ;


 int FALSE ;
 int IDE_debug ;
 int IDE_enabled ;
 int Log_print (char*,...) ;
 int TRUE ;
 char* Util_strdup (char*) ;
 TYPE_1__ device ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int ide_init_drive (TYPE_1__*,char*) ;
 int stderr ;
 int strcmp (char*,char*) ;

int IDE_Initialise(int *argc, char *argv[]) {
    int i, j, ret = TRUE;
    char *filename = ((void*)0);

    if (IDE_debug)
        fprintf(stderr, "ide: init\n");

    for (i = j = 1; i < *argc; i++) {
        int available = i + 1 < *argc;

        if (!strcmp(argv[i], "-ide" )) {
            if (!available) {
                Log_print("Missing argument for '%s'", argv[i]);
                return FALSE;
            }
            filename = Util_strdup(argv[++i]);
        } else if (!strcmp(argv[i], "-ide_debug")) {
            IDE_debug = 1;
        } else if (!strcmp(argv[i], "-ide_cf")) {
            device.is_cf = 1;
        } else {
             if (!strcmp(argv[i], "-help")) {
                 Log_print("\t-ide <file>      Enable IDE emulation");
                 Log_print("\t-ide_debug       Enable IDE Debug Output");
                 Log_print("\t-ide_cf          Enable CF emulation");
             }
             argv[j++] = argv[i];
        }
    }
    *argc = j;

    if (filename) {
        IDE_enabled = ret = ide_init_drive(&device, filename);
        free(filename);
    }

    return ret;
}
