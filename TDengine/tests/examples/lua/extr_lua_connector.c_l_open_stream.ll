; ModuleID = '/home/carl/AnghaBench/TDengine/tests/examples/lua/extr_lua_connector.c_l_open_stream.c'
source_filename = "/home/carl/AnghaBench/TDengine/tests/examples/lua/extr_lua_connector.c_l_open_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb_param = type { i32, i8*, i32* }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@stream_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to open stream, reason:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @l_open_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_open_stream(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cb_param*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %12 = call i32 @luaL_ref(i32* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i32* @lua_topointer(i32* %13, i32 1)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i8* @lua_tostring(i32* %15, i32 2)
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @luaL_checknumber(i32* %17, i32 3)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @lua_newtable(i32* %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @lua_gettop(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = call %struct.cb_param* @malloc(i32 24)
  store %struct.cb_param* %23, %struct.cb_param** %8, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = load %struct.cb_param*, %struct.cb_param** %8, align 8
  %26 = getelementptr inbounds %struct.cb_param, %struct.cb_param* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.cb_param*, %struct.cb_param** %8, align 8
  %29 = getelementptr inbounds %struct.cb_param, %struct.cb_param* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @stream_cb, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.cb_param*, %struct.cb_param** %8, align 8
  %35 = call i8* @taos_open_stream(i32* %30, i8* %31, i32 %32, i32 %33, %struct.cb_param* %34, i32* null)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %1
  %39 = load i32*, i32** %4, align 8
  %40 = call i8* @taos_errstr(i32* %39)
  %41 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load %struct.cb_param*, %struct.cb_param** %8, align 8
  %43 = call i32 @free(%struct.cb_param* %42)
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @lua_pushnumber(i32* %44, i32 -1)
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @lua_setfield(i32* %46, i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32*, i32** %2, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i8* @taos_errstr(i32* %50)
  %52 = call i32 @lua_pushstring(i32* %49, i8* %51)
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @lua_setfield(i32* %53, i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @lua_pushlightuserdata(i32* %56, %struct.cb_param* null)
  %58 = load i32*, i32** %2, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @lua_setfield(i32* %58, i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %83

61:                                               ; preds = %1
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @lua_pushnumber(i32* %62, i32 0)
  %64 = load i32*, i32** %2, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @lua_setfield(i32* %64, i32 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32*, i32** %2, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i8* @taos_errstr(i32* %68)
  %70 = call i32 @lua_pushstring(i32* %67, i8* %69)
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @lua_setfield(i32* %71, i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.cb_param*, %struct.cb_param** %8, align 8
  %76 = getelementptr inbounds %struct.cb_param, %struct.cb_param* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load i32*, i32** %2, align 8
  %78 = load %struct.cb_param*, %struct.cb_param** %8, align 8
  %79 = call i32 @lua_pushlightuserdata(i32* %77, %struct.cb_param* %78)
  %80 = load i32*, i32** %2, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @lua_setfield(i32* %80, i32 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %61, %38
  ret i32 1
}

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i32* @lua_topointer(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @luaL_checknumber(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local %struct.cb_param* @malloc(i32) #1

declare dso_local i8* @taos_open_stream(i32*, i8*, i32, i32, %struct.cb_param*, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @taos_errstr(i32*) #1

declare dso_local i32 @free(%struct.cb_param*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.cb_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
