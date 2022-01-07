; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_loadlib.c_ll_require.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_loadlib.c_ll_require.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@LUA_LOADED_TABLE = common dso_local global i8* null, align 8
@LUA_TNIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ll_require to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ll_require(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i8* @luaL_checkstring(i32* %5, i32 1)
  store i8* %6, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @lua_settop(i32* %7, i32 1)
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %11 = load i8*, i8** @LUA_LOADED_TABLE, align 8
  %12 = call i64 @lua_getfield(i32* %9, i32 %10, i8* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @lua_getfield(i32* %13, i32 2, i8* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @lua_toboolean(i32* %16, i32 -1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %55

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_pop(i32* %21, i32 1)
  %23 = load i32*, i32** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @findloader(i32* %23, i8* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @lua_pushstring(i32* %26, i8* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_insert(i32* %29, i32 -2)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_call(i32* %31, i32 2, i32 1)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_isnil(i32* %33, i32 -1)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %20
  %37 = load i32*, i32** %3, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @lua_setfield(i32* %37, i32 2, i8* %38)
  br label %40

40:                                               ; preds = %36, %20
  %41 = load i32*, i32** %3, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @lua_getfield(i32* %41, i32 2, i8* %42)
  %44 = load i64, i64* @LUA_TNIL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @lua_pushboolean(i32* %47, i32 1)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @lua_pushvalue(i32* %49, i32 -1)
  %51 = load i32*, i32** %3, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @lua_setfield(i32* %51, i32 2, i8* %52)
  br label %54

54:                                               ; preds = %46, %40
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %19
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i64 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @findloader(i32*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
