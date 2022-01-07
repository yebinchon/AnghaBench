; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-lua.c_network_mysqld_lua_load_script.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-lua.c_network_mysqld_lua_load_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"%s: lua_load_file(%s) failed: %s\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: luaL_loadfile(%s): returned a %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_lua_load_script(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @lua_gettop(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @lua_scope_load_script(%struct.TYPE_4__* %15, i8* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @lua_isstring(i32 %20, i32 -1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %14
  %24 = load i32, i32* @G_STRLOC, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lua_tostring(i32 %28, i32 -1)
  %30 = call i32 @g_critical(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24, i8* %25, i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @lua_pop(i32 %33, i32 1)
  store i32 -1, i32* %3, align 4
  br label %64

35:                                               ; preds = %14
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lua_isfunction(i32 %38, i32 -1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @G_STRLOC, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @lua_type(i32 %49, i32 -1)
  %51 = call i32 @lua_typename(i32 %46, i32 %50)
  %52 = call i32 @g_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %42, i8* %43, i32 %51)
  br label %53

53:                                               ; preds = %41, %35
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @lua_gettop(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %58, %59
  %61 = icmp eq i32 %60, 1
  %62 = zext i1 %61 to i32
  %63 = call i32 @g_assert(i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %54, %23, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @lua_gettop(i32) #1

declare dso_local i32 @lua_scope_load_script(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @lua_isstring(i32, i32) #1

declare dso_local i32 @g_critical(i8*, i32, i8*, i32) #1

declare dso_local i32 @lua_tostring(i32, i32) #1

declare dso_local i32 @lua_pop(i32, i32) #1

declare dso_local i32 @lua_isfunction(i32, i32) #1

declare dso_local i32 @g_error(i8*, i32, i8*, i32) #1

declare dso_local i32 @lua_typename(i32, i32) #1

declare dso_local i32 @lua_type(i32, i32) #1

declare dso_local i32 @g_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
