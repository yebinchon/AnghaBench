; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_samplefmt.c_av_samples_get_buffer_size.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_samplefmt.c_av_samples_get_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_samples_get_buffer_size(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @av_get_bytes_per_sample(i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @av_sample_fmt_is_planar(i32 %17)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %21, %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i32 @AVERROR(i32 %28)
  store i32 %29, i32* %6, align 4
  br label %100

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @INT_MAX, align 4
  %36 = sub nsw i32 %35, 31
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @AVERROR(i32 %39)
  store i32 %40, i32* %6, align 4
  br label %100

41:                                               ; preds = %33
  store i32 1, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @FFALIGN(i32 %42, i32 32)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %30
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @INT_MAX, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sdiv i32 %46, %47
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* @INT_MAX, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sub nsw i32 %54, %57
  %59 = load i32, i32* %13, align 4
  %60 = sdiv i32 %58, %59
  %61 = icmp sgt i32 %53, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %50, %44
  %63 = load i32, i32* @EINVAL, align 4
  %64 = call i32 @AVERROR(i32 %63)
  store i32 %64, i32* %6, align 4
  br label %100

65:                                               ; preds = %50
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %13, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @FFALIGN(i32 %71, i32 %72)
  br label %82

74:                                               ; preds = %65
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %13, align 4
  %77 = mul nsw i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @FFALIGN(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %74, %68
  %83 = phi i32 [ %73, %68 ], [ %81, %74 ]
  store i32 %83, i32* %12, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* %12, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %82
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %8, align 4
  %95 = mul nsw i32 %93, %94
  br label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %12, align 4
  br label %98

98:                                               ; preds = %96, %92
  %99 = phi i32 [ %95, %92 ], [ %97, %96 ]
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %98, %62, %38, %27
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i32 @av_sample_fmt_is_planar(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @FFALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
