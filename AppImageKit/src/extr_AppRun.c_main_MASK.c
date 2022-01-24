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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t LINE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,char*,...) ; 
 char* FUNC1 (size_t,int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC5 (char*,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  filter ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 int FUNC11 (char**,size_t*,int /*<<< orphan*/ *) ; 
 char* FUNC12 (size_t) ; 
 char* new_gsettings_schema_dir ; 
 char* new_gspath ; 
 char* new_gspath1 ; 
 char* new_ld_library_path ; 
 char* new_path ; 
 char* new_perllib ; 
 char* new_pythonhome ; 
 char* new_pythonpath ; 
 char* new_qt_plugin_path ; 
 char* new_xdg_data_dirs ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ *) ; 
 int FUNC15 (char*,struct dirent***,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,size_t,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 size_t FUNC18 (char*) ; 
 scalar_t__ FUNC19 (char*,char*,int) ; 

int FUNC20(int argc, char *argv[]) {
    char *appdir = FUNC4(FUNC14("/proc/self/exe", NULL));
    if (!appdir)
        FUNC3("Could not access /proc/self/exe\n");

    int ret;
    struct dirent **namelist;
    ret = FUNC15(appdir, &namelist, filter, NULL);

    if (ret == 0) {
        FUNC3("No .desktop files found\n");
    } else if(ret == -1) {
        FUNC3("Could not scan directory %s\n", appdir);
    }

    /* Extract executable from .desktop file */
    char *desktop_file = FUNC1(LINE_SIZE, sizeof(char));
    FUNC16(desktop_file, LINE_SIZE, "%s/%s", appdir, namelist[0]->d_name);
    FILE *f     = FUNC7(desktop_file, "r");
    char *line  = FUNC12(LINE_SIZE);
    size_t n    = LINE_SIZE;

    do {
        if (FUNC11(&line, &n, f) == -1)
            FUNC3("Executable not found, make sure there is a line starting with 'Exec='\n");
    } while(FUNC19(line, "Exec=", 5));
    FUNC6(f);
    char *exe   = line+5;

    // parse arguments
    bool in_quotes = 0;
    for (n = 0; n < LINE_SIZE; n++) {
        if (!line[n])         // end of string
            break;
        else if (line[n] == 10 || line[n] == 13) {
            line[n] = '\0';
            line[n+1] = '\0';
            line[n+2] = '\0';
            break;
        } else if (line[n] == '"') {
            in_quotes = !in_quotes;
        } else if (line[n] == ' ' && !in_quotes)
            line[n] = '\0';
    }

    // count arguments
    char*   arg         = exe;
    int     argcount    = 0;
    while ((arg += (FUNC18(arg)+1)) && *arg)
        argcount += 1;

    // merge args
    char*   outargptrs[argcount + argc + 1];
    outargptrs[0] = exe;
    int     outargindex = 1;
    arg                 = exe;
    int     argc_       = argc - 1;     // argv[0] is the filename
    char**  argv_       = argv + 1;
    while ((arg += (FUNC18(arg)+1)) && *arg) {
        if (arg[0] == '%' || (arg[0] == '"' && arg[1] == '%')) {         // handle desktop file field codes
            char code = arg[arg[0] == '%' ? 1 : 2];
            switch(code) {
                case 'f':
                case 'u':
                    if (argc_ > 0) {
                        outargptrs[outargindex++] = *argv_++;
                        argc_--;
                    }
                    break;
                case 'F':
                case 'U':
                    while (argc_ > 0) {
                        outargptrs[outargindex++] = *argv_++;
                        argc_--;
                    }
                    break;
                case 'i':
                case 'c':
                case 'k':
                    FUNC8(stderr, "WARNING: Desktop file field code %%%c is not currently supported\n", code);
                    break;
                default:
                    FUNC8(stderr, "WARNING: Invalid desktop file field code %%%c\n", code);
                    break;
            }
        } else {
            outargptrs[outargindex++] = arg;
        }
    }
    while (argc_ > 0) {
        outargptrs[outargindex++] = *argv_++;
        argc_--;
    }
    outargptrs[outargindex] = '\0';     // trailing null argument required by execvp()

    // change directory
    size_t appdir_s = FUNC18(appdir);
    char *usr_in_appdir = FUNC12(appdir_s + 5);
    FUNC16(usr_in_appdir, appdir_s + 5, "%s/usr", appdir);
    ret = FUNC2(usr_in_appdir);
    if (ret != 0)
        FUNC3("Could not cd into %s\n", usr_in_appdir);

    // set environment variables
    char *old_env;
    size_t length;
    const char *format;

    /* https://docs.python.org/2/using/cmdline.html#envvar-PYTHONHOME */
    FUNC0(new_pythonhome, appdir_s, "PYTHONHOME=%s/usr/", appdir);

    old_env = FUNC10("PATH") ?: "";
    FUNC0(new_path, appdir_s*5 + FUNC18(old_env), "PATH=%s/usr/bin/:%s/usr/sbin/:%s/usr/games/:%s/bin/:%s/sbin/:%s", appdir, appdir, appdir, appdir, appdir, old_env);

    old_env = FUNC10("LD_LIBRARY_PATH") ?: "";
    FUNC0(new_ld_library_path, appdir_s*10 + FUNC18(old_env), "LD_LIBRARY_PATH=%s/usr/lib/:%s/usr/lib/i386-linux-gnu/:%s/usr/lib/x86_64-linux-gnu/:%s/usr/lib32/:%s/usr/lib64/:%s/lib/:%s/lib/i386-linux-gnu/:%s/lib/x86_64-linux-gnu/:%s/lib32/:%s/lib64/:%s", appdir, appdir, appdir, appdir, appdir, appdir, appdir, appdir, appdir, appdir, old_env);

    old_env = FUNC10("PYTHONPATH") ?: "";
    FUNC0(new_pythonpath, appdir_s + FUNC18(old_env), "PYTHONPATH=%s/usr/share/pyshared/:%s", appdir, old_env);

    old_env = FUNC10("XDG_DATA_DIRS") ?: "/usr/local/share/:/usr/share/";
    FUNC0(new_xdg_data_dirs, appdir_s + FUNC18(old_env), "XDG_DATA_DIRS=%s/usr/share/:%s", appdir, old_env);

    old_env = FUNC10("PERLLIB") ?: "";
    FUNC0(new_perllib, appdir_s*2 + FUNC18(old_env), "PERLLIB=%s/usr/share/perl5/:%s/usr/lib/perl5/:%s", appdir, appdir, old_env);

    /* http://askubuntu.com/questions/251712/how-can-i-install-a-gsettings-schema-without-root-privileges */
    old_env = FUNC10("GSETTINGS_SCHEMA_DIR") ?: "";
    FUNC0(new_gsettings_schema_dir, appdir_s + FUNC18(old_env), "GSETTINGS_SCHEMA_DIR=%s/usr/share/glib-2.0/schemas/:%s", appdir, old_env);

    old_env = FUNC10("QT_PLUGIN_PATH") ?: "";
    FUNC0(new_qt_plugin_path, appdir_s*10 + FUNC18(old_env), "QT_PLUGIN_PATH=%s/usr/lib/qt4/plugins/:%s/usr/lib/i386-linux-gnu/qt4/plugins/:%s/usr/lib/x86_64-linux-gnu/qt4/plugins/:%s/usr/lib32/qt4/plugins/:%s/usr/lib64/qt4/plugins/:%s/usr/lib/qt5/plugins/:%s/usr/lib/i386-linux-gnu/qt5/plugins/:%s/usr/lib/x86_64-linux-gnu/qt5/plugins/:%s/usr/lib32/qt5/plugins/:%s/usr/lib64/qt5/plugins/:%s", appdir, appdir, appdir, appdir, appdir, appdir, appdir, appdir, appdir, appdir, old_env);

    FUNC0(new_gspath, appdir_s + FUNC18(old_env), "GST_PLUGIN_SYSTEM_PATH=%s/usr/lib/gstreamer:%s", appdir, old_env);
    FUNC0(new_gspath1, appdir_s + FUNC18(old_env), "GST_PLUGIN_SYSTEM_PATH_1_0=%s/usr/lib/gstreamer-1.0:%s", appdir, old_env);
    
    /* Otherwise may get errors because Python cannot write __pycache__ bytecode cache */
    FUNC13("PYTHONDONTWRITEBYTECODE=1");

    /* Run */
    ret = FUNC5(exe, outargptrs);

    int error = errno;

    if (ret == -1)
        FUNC3("Error executing '%s': %s\n", exe, FUNC17(error));

    FUNC9(line);
    FUNC9(desktop_file);
    FUNC9(usr_in_appdir);
    FUNC9(new_pythonhome);
    FUNC9(new_path);
    FUNC9(new_ld_library_path);
    FUNC9(new_pythonpath);
    FUNC9(new_xdg_data_dirs);
    FUNC9(new_perllib);
    FUNC9(new_gsettings_schema_dir);
    FUNC9(new_qt_plugin_path);
    return 0;
}