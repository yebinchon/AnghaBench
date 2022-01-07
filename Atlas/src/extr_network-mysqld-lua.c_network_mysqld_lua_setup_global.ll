; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-lua.c_network_mysqld_lua_setup_global.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-lua.c_network_mysqld_lua_setup_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"instance\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"logpath\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"backends\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"clients\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"pwds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @network_mysqld_lua_setup_global(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_gettop(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @lua_getglobal(i32* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @lua_isnil(i32* %13, i32 -1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_pop(i32* %17, i32 1)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @network_mysqld_lua_init_global_fenv(i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @lua_getglobal(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %16, %2
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @lua_istable(i32* %24, i32 -1)
  %26 = call i32 @g_assert(i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @lua_getfield(i32* %27, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_getfield(i32* %29, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32*, i32** %3, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @lua_pushstring(i32* %31, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @lua_setfield(i32* %36, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32*, i32** %3, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @lua_pushstring(i32* %38, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @lua_setfield(i32* %43, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @lua_pop(i32* %45, i32 1)
  %47 = load i32*, i32** %3, align 8
  %48 = call i8* @lua_newuserdata(i32* %47, i32 8)
  %49 = bitcast i8* %48 to %struct.TYPE_4__**
  store %struct.TYPE_4__** %49, %struct.TYPE_4__*** %5, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %5, align 8
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %53, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @network_backends_lua_getmetatable(i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @lua_setmetatable(i32* %56, i32 -2)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @lua_setfield(i32* %58, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %60 = load i32*, i32** %3, align 8
  %61 = call i8* @lua_newuserdata(i32* %60, i32 8)
  %62 = bitcast i8* %61 to i32**
  store i32** %62, i32*** %7, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32**, i32*** %7, align 8
  store i32* %67, i32** %68, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @network_clients_lua_getmetatable(i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @lua_setmetatable(i32* %71, i32 -2)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @lua_setfield(i32* %73, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i32*, i32** %3, align 8
  %76 = call i8* @lua_newuserdata(i32* %75, i32 8)
  %77 = bitcast i8* %76 to i32**
  store i32** %77, i32*** %8, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32**, i32*** %8, align 8
  store i32* %82, i32** %83, align 8
  %84 = load i32*, i32** %3, align 8
  %85 = call i32 @network_pwds_lua_getmetatable(i32* %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @lua_setmetatable(i32* %86, i32 -2)
  %88 = load i32*, i32** %3, align 8
  %89 = call i32 @lua_setfield(i32* %88, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @lua_pop(i32* %90, i32 2)
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @lua_gettop(i32* %92)
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @g_assert(i32 %96)
  ret void
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @network_mysqld_lua_init_global_fenv(i32*) #1

declare dso_local i32 @g_assert(i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i8* @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @network_backends_lua_getmetatable(i32*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @network_clients_lua_getmetatable(i32*) #1

declare dso_local i32 @network_pwds_lua_getmetatable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
