
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DebugMessage (int ,char*,char const*) ;
 int M64MSG_WARNING ;
 int SDL_HAT_DOWN ;
 int SDL_HAT_LEFT ;
 int SDL_HAT_RIGHT ;
 int SDL_HAT_UP ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int get_hat_pos_by_name( const char *name )
{
    if( !strcasecmp( name, "up" ) )
        return SDL_HAT_UP;
    if( !strcasecmp( name, "down" ) )
        return SDL_HAT_DOWN;
    if( !strcasecmp( name, "left" ) )
        return SDL_HAT_LEFT;
    if( !strcasecmp( name, "right" ) )
        return SDL_HAT_RIGHT;
    DebugMessage(M64MSG_WARNING, "get_hat_pos_by_name(): direction '%s' unknown", name);
    return -1;
}
