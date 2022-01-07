; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lmathlib.c_math_random.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lmathlib.c_math_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RAND_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"interval is empty\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"wrong number of arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @math_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @math_random(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = call i32 (...) @rand()
  %9 = load i32, i32* @RAND_MAX, align 4
  %10 = srem i32 %8, %9
  %11 = load i32, i32* @RAND_MAX, align 4
  %12 = sdiv i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  switch i32 %14, label %56 [
    i32 0, label %15
    i32 1, label %19
    i32 2, label %34
  ]

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @lua_pushnumber(i32* %16, i32 %17)
  br label %59

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @luaL_checkint(i32* %20, i32 1)
  store i32 %21, i32* %5, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp sle i32 1, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @luaL_argcheck(i32* %22, i32 %25, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %28, %29
  %31 = call i32 @floor(i32 %30)
  %32 = add nsw i32 %31, 1
  %33 = call i32 @lua_pushnumber(i32* %27, i32 %32)
  br label %59

34:                                               ; preds = %1
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @luaL_checkint(i32* %35, i32 1)
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @luaL_checkint(i32* %37, i32 2)
  store i32 %38, i32* %7, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp sle i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @luaL_argcheck(i32* %39, i32 %43, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  %51 = mul nsw i32 %46, %50
  %52 = call i32 @floor(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @lua_pushnumber(i32* %45, i32 %54)
  br label %59

56:                                               ; preds = %1
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @luaL_error(i32* %57, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %34, %19, %15
  store i32 1, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @rand(...) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @floor(i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
