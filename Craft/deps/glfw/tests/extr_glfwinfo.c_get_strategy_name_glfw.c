
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLFW_LOSE_CONTEXT_ON_RESET ;
 int GLFW_NO_RESET_NOTIFICATION ;
 char const* STRATEGY_NAME_LOSE ;
 char const* STRATEGY_NAME_NONE ;

__attribute__((used)) static const char* get_strategy_name_glfw(int strategy)
{
    if (strategy == GLFW_LOSE_CONTEXT_ON_RESET)
        return STRATEGY_NAME_LOSE;
    if (strategy == GLFW_NO_RESET_NOTIFICATION)
        return STRATEGY_NAME_NONE;

    return "unknown";
}
