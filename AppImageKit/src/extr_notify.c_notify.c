
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void (* notify_notification_show_t ) (void*,char*) ;
typedef void (* notify_notification_set_timeout_t ) (void*,int) ;
typedef void* (* notify_notification_new_t ) (char*,char*,char*,char*) ;
typedef void (* notify_init_t ) (char*) ;


 int RTLD_LAZY ;
 int dlclose (void*) ;
 void* dlopen (char*,int ) ;
 scalar_t__ dlsym (void*,char*) ;
 int fileno (int ) ;
 scalar_t__ isatty (int ) ;
 int printf (char*,...) ;
 int stdin ;

int notify(char *title, char *body, int timeout)
{

    if (isatty(fileno(stdin))){

        printf("\n%s\n", title);
        printf("%s\n", body);
    }
    else
    {

        printf("\n%s\n", title);
        printf("%s\n", body);

        void *handle, *n;
        typedef void (*notify_init_t)(char *);
        typedef void *(*notify_notification_new_t)( char *, char *, char *, char *);
        typedef void (*notify_notification_set_timeout_t)( void *, int );
        typedef void (*notify_notification_show_t)(void *, char *);
        handle = ((void*)0);
        if(handle == ((void*)0))
            handle= dlopen("libnotify.so.3", RTLD_LAZY);
        if(handle == ((void*)0))
            handle= dlopen("libnotify.so.4", RTLD_LAZY);
        if(handle == ((void*)0))
            handle= dlopen("libnotify.so.5", RTLD_LAZY);
        if(handle == ((void*)0))
            handle= dlopen("libnotify.so.6", RTLD_LAZY);
        if(handle == ((void*)0))
            handle= dlopen("libnotify.so.7", RTLD_LAZY);
        if(handle == ((void*)0))
            handle= dlopen("libnotify.so.8", RTLD_LAZY);

        if(handle == ((void*)0))
        {
            printf("Failed to open libnotify.\n\n" );
        }
        notify_init_t init = (notify_init_t)dlsym(handle, "notify_init");
        if ( init == ((void*)0) )
        {
            dlclose( handle );
            return 1;
        }
        init("AppImage");

        notify_notification_new_t nnn = (notify_notification_new_t)dlsym(handle, "notify_notification_new");
        if ( nnn == ((void*)0) )
        {
            dlclose( handle );
            return 1;
        }
        n = nnn(title, body, ((void*)0), ((void*)0));
        notify_notification_set_timeout_t nnst = (notify_notification_set_timeout_t)dlsym(handle, "notify_notification_set_timeout");
        if ( nnst == ((void*)0) )
        {
            dlclose( handle );
            return 1;
        }
        nnst(n, timeout);
        notify_notification_show_t show = (notify_notification_show_t)dlsym(handle, "notify_notification_show");
        if ( init == ((void*)0) )
        {
            dlclose( handle );
            return 1;
        }
        show(n, ((void*)0) );
        dlclose(handle );
    }
    return 0;
}
