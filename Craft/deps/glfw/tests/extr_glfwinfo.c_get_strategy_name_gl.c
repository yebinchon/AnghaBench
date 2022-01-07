
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLint ;


 scalar_t__ GL_LOSE_CONTEXT_ON_RESET_ARB ;
 scalar_t__ GL_NO_RESET_NOTIFICATION_ARB ;
 char const* STRATEGY_NAME_LOSE ;
 char const* STRATEGY_NAME_NONE ;

__attribute__((used)) static const char* get_strategy_name_gl(GLint strategy)
{
    if (strategy == GL_LOSE_CONTEXT_ON_RESET_ARB)
        return STRATEGY_NAME_LOSE;
    if (strategy == GL_NO_RESET_NOTIFICATION_ARB)
        return STRATEGY_NAME_NONE;

    return "unknown";
}
