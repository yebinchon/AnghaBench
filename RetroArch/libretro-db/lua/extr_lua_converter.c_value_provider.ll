; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/lua/extr_lua_converter.c_value_provider.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/lua/extr_lua_converter.c_value_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmsgpack_dom_value = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"get_value\00", align 1
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
  %10 = call i32 @lua_getglobal(i32* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @lua_pcall(i32* %11, i32 0, i32 1, i32 0)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = call i8* @lua_tostring(i32* %15, i32 -1)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @lua_isnil(i32* %19, i32 -1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %34

23:                                               ; preds = %18
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @lua_istable(i32* %24, i32 -1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %4, align 8
  %30 = call i32 @libretrodb_lua_to_rmsgpack_value(i32* %28, i32 -1, %struct.rmsgpack_dom_value* %29)
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %23
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @lua_pop(i32* %35, i32 1)
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

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
