; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_lua-env.c_proxy_getmetatable.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_lua-env.c_proxy_getmetatable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proxy_getmetatable(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @lua_pushlightuserdata(i32* %5, i32* %6)
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %10 = call i32 @lua_gettable(i32* %8, i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @lua_isnil(i32* %11, i32 -1)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_pop(i32* %15, i32 1)
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_newtable(i32* %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @luaL_register(i32* %19, i32* null, i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @lua_pushlightuserdata(i32* %22, i32* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_pushvalue(i32* %25, i32 -2)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %29 = call i32 @lua_settable(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %14, %2
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_istable(i32* %31, i32 -1)
  %33 = call i32 @g_assert(i32 %32)
  ret i32 1
}

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @luaL_register(i32*, i32*, i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_settable(i32*, i32) #1

declare dso_local i32 @g_assert(i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
