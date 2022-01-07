; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ldblib.c_db_sethook.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ldblib.c_db_sethook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TFUNCTION = common dso_local global i32 0, align 4
@hookf = common dso_local global i32* null, align 8
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@HOOKKEY = common dso_local global i32 0, align 4
@LUA_TNIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @db_sethook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db_sethook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32* @getthread(i32* %9, i32* %3)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  %14 = call i64 @lua_isnoneornil(i32* %11, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @lua_settop(i32* %17, i32 %19)
  store i32* null, i32** %6, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %40

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 2
  %25 = call i8* @luaL_checkstring(i32* %22, i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @LUA_TFUNCTION, align 4
  %30 = call i32 @luaL_checktype(i32* %26, i32 %28, i32 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 3
  %34 = call i64 @luaL_optinteger(i32* %31, i32 %33, i32 0)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load i32*, i32** @hookf, align 8
  store i32* %36, i32** %6, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @makemask(i8* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %21, %16
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %43 = call i64 @lua_rawgetp(i32* %41, i32 %42, i32* @HOOKKEY)
  %44 = load i64, i64* @LUA_TNIL, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @lua_createtable(i32* %47, i32 0, i32 2)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @lua_pushvalue(i32* %49, i32 -1)
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %53 = call i32 @lua_rawsetp(i32* %51, i32 %52, i32* @HOOKKEY)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @lua_pushstring(i32* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @lua_setfield(i32* %56, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @lua_pushvalue(i32* %58, i32 -1)
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @lua_setmetatable(i32* %60, i32 -2)
  br label %62

62:                                               ; preds = %46, %40
  %63 = load i32*, i32** %2, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @checkstack(i32* %63, i32* %64, i32 1)
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @lua_pushthread(i32* %66)
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @lua_xmove(i32* %68, i32* %69, i32 1)
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  %74 = call i32 @lua_pushvalue(i32* %71, i32 %73)
  %75 = load i32*, i32** %2, align 8
  %76 = call i32 @lua_rawset(i32* %75, i32 -3)
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @lua_sethook(i32* %77, i32* %78, i32 %79, i32 %80)
  ret i32 0
}

declare dso_local i32* @getthread(i32*, i32*) #1

declare dso_local i64 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i64 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @makemask(i8*, i32) #1

declare dso_local i64 @lua_rawgetp(i32*, i32, i32*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawsetp(i32*, i32, i32*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @checkstack(i32*, i32*, i32) #1

declare dso_local i32 @lua_pushthread(i32*) #1

declare dso_local i32 @lua_xmove(i32*, i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_sethook(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
