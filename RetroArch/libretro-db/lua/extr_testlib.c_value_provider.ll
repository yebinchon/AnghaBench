; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/lua/extr_testlib.c_value_provider.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/lua/extr_testlib.c_value_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmsgpack_dom_value = type { i32 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"testlib_get_value\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"error running function `get_value': %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"function `get_value' must return a table or nil\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rmsgpack_dom_value*)* @value_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @value_provider(i8* %0, %struct.rmsgpack_dom_value* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rmsgpack_dom_value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.rmsgpack_dom_value* %1, %struct.rmsgpack_dom_value** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %11 = call i32 @lua_getfield(i32* %9, i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @lua_pcall(i32* %12, i32 0, i32 1, i32 0)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = call i8* @lua_tostring(i32* %16, i32 -1)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @lua_isnil(i32* %20, i32 -1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %35

24:                                               ; preds = %19
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @lua_istable(i32* %25, i32 -1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %31 = call i32 @libretrodb_lua_to_rmsgpack_value(i32* %29, i32 -1, %struct.rmsgpack_dom_value* %30)
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %24
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @lua_pop(i32* %36, i32 1)
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i64 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i64 @lua_istable(i32*, i32) #1

declare dso_local i32 @libretrodb_lua_to_rmsgpack_value(i32*, i32, %struct.rmsgpack_dom_value*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
