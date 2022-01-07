; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g729postfilter.c_apply_tilt_comp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g729postfilter.c_apply_tilt_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G729_TILT_FACTOR_PLUS = common dso_local global i32 0, align 4
@G729_TILT_FACTOR_MINUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32)* @apply_tilt_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_tilt_comp(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @G729_TILT_FACTOR_PLUS, align 4
  %23 = mul nsw i32 %21, %22
  %24 = add nsw i32 %23, 16384
  %25 = ashr i32 %24, 15
  store i32 %25, i32* %14, align 4
  store i32 16384, i32* %16, align 4
  store i32 15, i32* %17, align 4
  br label %32

26:                                               ; preds = %5
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @G729_TILT_FACTOR_MINUS, align 4
  %29 = mul nsw i32 %27, %28
  %30 = add nsw i32 %29, 16384
  %31 = ashr i32 %30, 15
  store i32 %31, i32* %14, align 4
  store i32 2048, i32* %16, align 4
  store i32 12, i32* %17, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i32, i32* %16, align 4
  %34 = shl i32 %33, 15
  %35 = load i32, i32* %14, align 4
  %36 = call i64 @FFABS(i32 %35)
  %37 = sub nsw i64 32768, %36
  %38 = call i32 @av_clip_int16(i64 %37)
  %39 = sdiv i32 %34, %38
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %14, align 4
  %41 = ashr i32 %40, 1
  store i32 %41, i32* %14, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %85, %32
  %51 = load i32, i32* %13, align 4
  %52 = icmp sge i32 %51, 1
  br i1 %52, label %53, label %88

53:                                               ; preds = %50
  %54 = load i32, i32* %14, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %54, %60
  %62 = mul nsw i32 %61, 2
  %63 = add nsw i32 %62, 16384
  store i32 %63, i32* %12, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = ashr i32 %69, 15
  %71 = add nsw i32 %68, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %15, align 4
  %74 = mul nsw i32 %72, %73
  %75 = mul nsw i32 %74, 2
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %17, align 4
  %79 = ashr i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %53
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %13, align 4
  br label %50

88:                                               ; preds = %50
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %10, align 4
  %91 = mul nsw i32 %89, %90
  %92 = mul nsw i32 %91, 2
  %93 = add nsw i32 %92, 16384
  store i32 %93, i32* %12, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = ashr i32 %97, 15
  %99 = add nsw i32 %96, %98
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %15, align 4
  %102 = mul nsw i32 %100, %101
  %103 = mul nsw i32 %102, 2
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* %17, align 4
  %107 = ashr i32 %105, %106
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %11, align 4
  ret i32 %111
}

declare dso_local i32 @av_clip_int16(i64) #1

declare dso_local i64 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
