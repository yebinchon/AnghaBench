; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-injection-lua.c_proxy_queue_add.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-injection-lua.c_proxy_queue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@lua_istable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"resultset_is_needed\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c":append(..., { resultset_is_needed = boolean } ), is %s\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c":prepend(..., { resultset_is_needed = boolean } ), is %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @proxy_queue_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_queue_add(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @luaL_checkself(i32* %12)
  %14 = inttoptr i64 %13 to i32**
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @luaL_checkinteger(i32* %16, i32 2)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @luaL_checklstring(i32* %18, i32 3, i64* %8)
  store i8* %19, i8** %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32* @g_string_sized_new(i64 %20)
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @g_string_append_len(i32* %22, i8* %23, i64 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = call %struct.TYPE_5__* @injection_new(i32 %26, i32* %27)
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %10, align 8
  %29 = load i32, i32* @FALSE, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @lua_istable, align 4
  %34 = call i32 @luaL_opt(i32* %32, i32 %33, i32 4, i32 -1)
  switch i32 %34, label %65 [
    i32 -1, label %35
    i32 1, label %36
  ]

35:                                               ; preds = %2
  br label %70

36:                                               ; preds = %2
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @lua_getfield(i32* %37, i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @lua_isnil(i32* %39, i32 -1)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %62

43:                                               ; preds = %36
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @lua_isboolean(i32* %44, i32 -1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @lua_toboolean(i32* %48, i32 -1)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %61

52:                                               ; preds = %43
  %53 = load i32, i32* %5, align 4
  switch i32 %53, label %60 [
    i32 129, label %54
    i32 128, label %57
  ]

54:                                               ; preds = %52
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @luaL_argerror(i32* %55, i32 4, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  store i32 %56, i32* %3, align 4
  br label %82

57:                                               ; preds = %52
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @luaL_argerror(i32* %58, i32 4, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store i32 %59, i32* %3, align 4
  br label %82

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @lua_pop(i32* %63, i32 1)
  br label %70

65:                                               ; preds = %2
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @proxy_lua_dumpstack_verbose(i32* %66)
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @luaL_typerror(i32* %68, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %62, %35
  %71 = load i32, i32* %5, align 4
  switch i32 %71, label %80 [
    i32 129, label %72
    i32 128, label %76
  ]

72:                                               ; preds = %70
  %73 = load i32*, i32** %6, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %75 = call i32 @network_injection_queue_append(i32* %73, %struct.TYPE_5__* %74)
  store i32 0, i32* %3, align 4
  br label %82

76:                                               ; preds = %70
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %79 = call i32 @network_injection_queue_prepend(i32* %77, %struct.TYPE_5__* %78)
  store i32 0, i32* %3, align 4
  br label %82

80:                                               ; preds = %70
  %81 = call i32 (...) @g_assert_not_reached()
  br label %82

82:                                               ; preds = %80, %76, %72, %57, %54
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64 @luaL_checkself(i32*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32* @g_string_sized_new(i64) #1

declare dso_local i32 @g_string_append_len(i32*, i8*, i64) #1

declare dso_local %struct.TYPE_5__* @injection_new(i32, i32*) #1

declare dso_local i32 @luaL_opt(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_isboolean(i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @luaL_argerror(i32*, i32, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @proxy_lua_dumpstack_verbose(i32*) #1

declare dso_local i32 @luaL_typerror(i32*, i32, i8*) #1

declare dso_local i32 @network_injection_queue_append(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @network_injection_queue_prepend(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @g_assert_not_reached(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
