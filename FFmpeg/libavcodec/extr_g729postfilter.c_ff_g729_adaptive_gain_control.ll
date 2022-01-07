; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g729postfilter.c_ff_g729_adaptive_gain_control.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g729postfilter.c_ff_g729_adaptive_gain_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@G729_AGC_FAC1 = common dso_local global i32 0, align 4
@G729_AGC_FACTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_g729_adaptive_gain_control(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %106

22:                                               ; preds = %18, %5
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %71

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @av_log2(i32 %26)
  %28 = sub nsw i32 14, %27
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @bidir_sal(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @av_log2(i32 %32)
  %34 = sub nsw i32 14, %33
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @bidir_sal(i32 %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %25
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %42, 15
  %44 = load i32, i32* %8, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @bidir_sal(i32 %46, i32 %50)
  store i32 %51, i32* %12, align 4
  br label %65

52:                                               ; preds = %25
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %53, %54
  %56 = shl i32 %55, 14
  %57 = load i32, i32* %8, align 4
  %58 = sdiv i32 %56, %57
  %59 = add nsw i32 %58, 16384
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %14, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 @bidir_sal(i32 %60, i32 %63)
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %52, %41
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @G729_AGC_FAC1, align 4
  %68 = mul nsw i32 %66, %67
  %69 = add nsw i32 %68, 16384
  %70 = ashr i32 %69, 15
  store i32 %70, i32* %12, align 4
  br label %72

71:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %72

72:                                               ; preds = %71, %65
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %101, %72
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %104

77:                                               ; preds = %73
  %78 = load i32, i32* @G729_AGC_FACTOR, align 4
  %79 = load i32, i32* %11, align 4
  %80 = mul nsw i32 %78, %79
  %81 = add nsw i32 %80, 16384
  %82 = ashr i32 %81, 15
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %83, %84
  %86 = call i32 @av_clip_int16(i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 %91, %92
  %94 = add nsw i32 %93, 8192
  %95 = ashr i32 %94, 14
  %96 = call i32 @av_clip_int16(i32 %95)
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  br label %101

101:                                              ; preds = %77
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %73

104:                                              ; preds = %73
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %104, %21
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @bidir_sal(i32, i32) #1

declare dso_local i32 @av_clip_int16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
