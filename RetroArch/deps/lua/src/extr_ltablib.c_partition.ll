; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ltablib.c_partition.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_ltablib.c_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"invalid order function for sorting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @partition(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %64, %3
  br label %13

13:                                               ; preds = %29, %12
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  %17 = call i64 @lua_geti(i32* %14, i32 1, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @sort_comp(i32* %18, i32 -1, i32 -2)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @luaL_error(i32* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @lua_pop(i32* %30, i32 1)
  br label %13

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %8, align 4
  %37 = call i64 @lua_geti(i32* %34, i32 1, i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @sort_comp(i32* %38, i32 -3, i32 -1)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @luaL_error(i32* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @lua_pop(i32* %49, i32 1)
  br label %33

51:                                               ; preds = %33
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @lua_pop(i32* %56, i32 1)
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @set2(i32* %58, i32 %60, i32 %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63

64:                                               ; preds = %51
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @set2(i32* %65, i32 %66, i32 %67)
  br label %12
}

declare dso_local i64 @lua_geti(i32*, i32, i32) #1

declare dso_local i32 @sort_comp(i32*, i32, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @set2(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
