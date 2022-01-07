; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cycle_map.c_try_all_scroll.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cycle_map.c_try_all_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CYCLE_MAP_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*, i32*)* @try_all_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_all_scroll(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [115 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 1, i32* %14, align 4
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds [115 x i8], [115 x i8]* %13, i64 0, i64 0
  %23 = load i32*, i32** %11, align 8
  %24 = load i64, i64* @CYCLE_MAP_SIZE, align 8
  %25 = mul i64 %24, 0
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32*, i32** %12, align 8
  %28 = load i64, i64* @CYCLE_MAP_SIZE, align 8
  %29 = mul i64 %28, 0
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @antic_steal_map(i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i8* %22, i32* %26, i32* %30)
  store i32 2, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %58, %6
  %33 = load i32, i32* %15, align 4
  %34 = icmp sle i32 %33, 7
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = getelementptr inbounds [115 x i8], [115 x i8]* %13, i64 0, i64 0
  %43 = load i32*, i32** %11, align 8
  %44 = load i64, i64* @CYCLE_MAP_SIZE, align 8
  %45 = load i32, i32* %15, align 4
  %46 = add nsw i32 1, %45
  %47 = sext i32 %46 to i64
  %48 = mul i64 %44, %47
  %49 = getelementptr inbounds i32, i32* %43, i64 %48
  %50 = load i32*, i32** %12, align 8
  %51 = load i64, i64* @CYCLE_MAP_SIZE, align 8
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 1, %52
  %54 = sext i32 %53 to i64
  %55 = mul i64 %51, %54
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = call i32 @antic_steal_map(i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i8* %42, i32* %49, i32* %56)
  br label %58

58:                                               ; preds = %35
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %32

61:                                               ; preds = %32
  store i32 3, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %88, %61
  %63 = load i32, i32* %15, align 4
  %64 = icmp sle i32 %63, 7
  br i1 %64, label %65, label %91

65:                                               ; preds = %62
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = getelementptr inbounds [115 x i8], [115 x i8]* %13, i64 0, i64 0
  %73 = load i32*, i32** %11, align 8
  %74 = load i64, i64* @CYCLE_MAP_SIZE, align 8
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 9, %75
  %77 = sext i32 %76 to i64
  %78 = mul i64 %74, %77
  %79 = getelementptr inbounds i32, i32* %73, i64 %78
  %80 = load i32*, i32** %12, align 8
  %81 = load i64, i64* @CYCLE_MAP_SIZE, align 8
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 9, %82
  %84 = sext i32 %83 to i64
  %85 = mul i64 %81, %84
  %86 = getelementptr inbounds i32, i32* %80, i64 %85
  %87 = call i32 @antic_steal_map(i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i8* %72, i32* %79, i32* %86)
  br label %88

88:                                               ; preds = %65
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %62

91:                                               ; preds = %62
  ret void
}

declare dso_local i32 @antic_steal_map(i32, i32, i32, i32, i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
