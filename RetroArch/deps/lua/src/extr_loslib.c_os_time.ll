; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_loslib.c_os_time.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_loslib.c_os_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }

@LUA_TTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"month\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"year\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"isdst\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"time result cannot be represented in this installation\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @os_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @os_time(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tm, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @lua_isnoneornil(i32* %6, i32 1)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i64 @time(i32* null)
  store i64 %10, i64* %4, align 8
  br label %41

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @LUA_TTABLE, align 4
  %14 = call i32 @luaL_checktype(i32* %12, i32 1, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @lua_settop(i32* %15, i32 1)
  %17 = load i32*, i32** %3, align 8
  %18 = call i8* @getfield(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 6
  store i8* %18, i8** %19, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @getfield(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 5
  store i8* %21, i8** %22, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i8* @getfield(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 12, i32 0)
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 4
  store i8* %24, i8** %25, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i8* @getfield(i32* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 -1, i32 0)
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 3
  store i8* %27, i8** %28, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i8* @getfield(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 -1, i32 1)
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i8* @getfield(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32 1900)
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @getboolfield(i32* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %5, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = call i64 @mktime(%struct.tm* %5)
  store i64 %38, i64* %4, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @setallfields(i32* %39, %struct.tm* %5)
  br label %41

41:                                               ; preds = %11, %9
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = icmp eq i64 %46, -1
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %41
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @luaL_error(i32* %49, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %45
  %52 = load i32*, i32** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @l_pushtime(i32* %52, i64 %53)
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @lua_isnoneornil(i32*, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i8* @getfield(i32*, i8*, i32, i32) #1

declare dso_local i32 @getboolfield(i32*, i8*) #1

declare dso_local i64 @mktime(%struct.tm*) #1

declare dso_local i32 @setallfields(i32*, %struct.tm*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @l_pushtime(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
