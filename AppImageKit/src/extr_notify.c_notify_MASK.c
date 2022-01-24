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
typedef  void (* notify_notification_show_t ) (void*,char*) ;
typedef  void (* notify_notification_set_timeout_t ) (void*,int) ;
typedef  void* (* notify_notification_new_t ) (char*,char*,char*,char*) ;
typedef  void (* notify_init_t ) (char*) ;

/* Variables and functions */
 int /*<<< orphan*/  RTLD_LAZY ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (void*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  stdin ; 

int FUNC6(char *title, char *body, int timeout)
{
    /* http://stackoverflow.com/questions/13204177/how-to-find-out-if-running-from-terminal-or-gui */
    if (FUNC4(FUNC3(stdin))){
        /* We were launched from the command line. */
        FUNC5("\n%s\n", title);
        FUNC5("%s\n", body);
    }
    else
    {
        /* We were launched from inside the desktop */
        FUNC5("\n%s\n", title);
        FUNC5("%s\n", body);
        /* https://debian-administration.org/article/407/Creating_desktop_notifications */
        void *handle, *n;
        typedef void  (*notify_init_t)(char *);
        typedef void *(*notify_notification_new_t)( char *, char *, char *, char *);
        typedef void  (*notify_notification_set_timeout_t)( void *, int );
        typedef void (*notify_notification_show_t)(void *, char *);
        handle = NULL;
        if(handle == NULL)
            handle= FUNC1("libnotify.so.3", RTLD_LAZY);
        if(handle == NULL)
            handle= FUNC1("libnotify.so.4", RTLD_LAZY);
        if(handle == NULL)
            handle= FUNC1("libnotify.so.5", RTLD_LAZY);
        if(handle == NULL)
            handle= FUNC1("libnotify.so.6", RTLD_LAZY);
        if(handle == NULL)
            handle= FUNC1("libnotify.so.7", RTLD_LAZY);
        if(handle == NULL)
            handle= FUNC1("libnotify.so.8", RTLD_LAZY);
        
        if(handle == NULL)
        {
            FUNC5("Failed to open libnotify.\n\n" );
        }
        notify_init_t init = (notify_init_t)FUNC2(handle, "notify_init");
        if ( init == NULL  )
        {
            FUNC0( handle );
            return 1;
        }
        init("AppImage");
        
        notify_notification_new_t nnn = (notify_notification_new_t)FUNC2(handle, "notify_notification_new");
        if ( nnn == NULL  )
        {
            FUNC0( handle );
            return 1;
        }
        n = nnn(title, body, NULL, NULL);
        notify_notification_set_timeout_t nnst = (notify_notification_set_timeout_t)FUNC2(handle, "notify_notification_set_timeout");
        if ( nnst == NULL  )
        {
            FUNC0( handle );
            return 1;
        }
        nnst(n, timeout); 
        notify_notification_show_t show = (notify_notification_show_t)FUNC2(handle, "notify_notification_show");
        if ( init == NULL  )
        {
            FUNC0( handle );
            return 1;
        }
        show(n, NULL );
        FUNC0(handle );
    }
    return 0;
}