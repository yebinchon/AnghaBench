; ModuleID = '/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_rgb24ToY_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libswscale/extr_input.c_rgb24ToY_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RY_IDX = common dso_local global i64 0, align 8
@GY_IDX = common dso_local global i64 0, align 8
@BY_IDX = common dso_local global i64 0, align 8
@RGB2YUV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32*)* @rgb24ToY_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb24ToY_c(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %21 = load i32*, i32** %7, align 8
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i64, i64* @RY_IDX, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = load i64, i64* @GY_IDX, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = load i64, i64* @BY_IDX, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %34

34:                                               ; preds = %86, %6
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %89

38:                                               ; preds = %34
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %17, align 4
  %41 = mul nsw i32 %40, 3
  %42 = add nsw i32 %41, 0
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %18, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %17, align 4
  %48 = mul nsw i32 %47, 3
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %19, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %17, align 4
  %55 = mul nsw i32 %54, 3
  %56 = add nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %18, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %19, align 4
  %65 = mul nsw i32 %63, %64
  %66 = add nsw i32 %62, %65
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %20, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %66, %69
  %71 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %72 = sub nsw i32 %71, 1
  %73 = shl i32 32, %72
  %74 = add nsw i32 %70, %73
  %75 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %76 = sub nsw i32 %75, 7
  %77 = shl i32 1, %76
  %78 = add nsw i32 %74, %77
  %79 = load i32, i32* @RGB2YUV_SHIFT, align 4
  %80 = sub nsw i32 %79, 6
  %81 = ashr i32 %78, %80
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %38
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %17, align 4
  br label %34

89:                                               ; preds = %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
