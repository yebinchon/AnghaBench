
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

void
print_help(const char *appimage_path)
{

    fprintf(stderr,
        "AppImage options:\n\n"
        "  --appimage-extract [<pattern>]  Extract content from embedded filesystem image\n"
        "                                  If pattern is passed, only extract matching files\n"
        "  --appimage-help                 Print this help\n"
        "  --appimage-mount                Mount embedded filesystem image and print\n"
        "                                  mount point and wait for kill with Ctrl-C\n"
        "  --appimage-offset               Print byte offset to start of embedded\n"
        "                                  filesystem image\n"
        "  --appimage-portable-home        Create a portable home folder to use as $HOME\n"
        "  --appimage-portable-config      Create a portable config folder to use as\n"
        "                                  $XDG_CONFIG_HOME\n"
        "  --appimage-signature            Print digital signature embedded in AppImage\n"
        "  --appimage-updateinfo[rmation]  Print update info embedded in AppImage\n"
        "  --appimage-version              Print version of AppImageKit\n"
        "\n"
        "Portable home:\n"
        "\n"
        "  If you would like the application contained inside this AppImage to store its\n"
        "  data alongside this AppImage rather than in your home directory, then you can\n"
        "  place a directory named\n"
        "\n"
        "  %s.home\n"
        "\n"
        "  Or you can invoke this AppImage with the --appimage-portable-home option,\n"
        "  which will create this directory for you. As long as the directory exists\n"
        "  and is neither moved nor renamed, the application contained inside this\n"
        "  AppImage to store its data in this directory rather than in your home\n"
        "  directory\n"
    , appimage_path);
}
