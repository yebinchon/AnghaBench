; ModuleID = '/home/carl/AnghaBench/TDengine/tests/examples/lua/extr_lua_connector.c_l_connect.c'
source_filename = "/home/carl/AnghaBench/TDengine/tests/examples/lua/extr_lua_connector.c_l_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"failed to connect server, reason:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"conn\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"success to connect server\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @l_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_connect(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @lua_tostring(i32* %10, i32 1)
  store i8* %11, i8** %4, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i8* @lua_tostring(i32* %12, i32 2)
  store i8* %13, i8** %5, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i8* @lua_tostring(i32* %14, i32 3)
  store i8* %15, i8** %6, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i8* @lua_tostring(i32* %16, i32 4)
  store i8* %17, i8** %7, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @luaL_checknumber(i32* %18, i32 5)
  store i32 %19, i32* %8, align 4
  %20 = call i32 (...) @taos_init()
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @lua_newtable(i32* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @lua_gettop(i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32* @taos_connect(i8* %25, i8* %26, i8* %27, i8* %28, i32 %29)
  store i32* %30, i32** %3, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %54

33:                                               ; preds = %1
  %34 = load i32*, i32** %3, align 8
  %35 = call i8* @taos_errstr(i32* %34)
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @lua_pushnumber(i32* %37, i32 -1)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @lua_setfield(i32* %39, i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32*, i32** %2, align 8
  %43 = load i32*, i32** %3, align 8
  %44 = call i8* @taos_errstr(i32* %43)
  %45 = call i32 @lua_pushstring(i32* %42, i8* %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @lua_setfield(i32* %46, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @lua_pushlightuserdata(i32* %49, i32* null)
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @lua_setfield(i32* %51, i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %74

54:                                               ; preds = %1
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @lua_pushnumber(i32* %56, i32 0)
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @lua_setfield(i32* %58, i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32*, i32** %2, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call i8* @taos_errstr(i32* %62)
  %64 = call i32 @lua_pushstring(i32* %61, i8* %63)
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @lua_setfield(i32* %65, i32 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32*, i32** %2, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @lua_pushlightuserdata(i32* %68, i32* %69)
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @lua_setfield(i32* %71, i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %54, %33
  ret i32 1
}

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @luaL_checknumber(i32*, i32) #1

declare dso_local i32 @taos_init(...) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32* @taos_connect(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @taos_errstr(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
