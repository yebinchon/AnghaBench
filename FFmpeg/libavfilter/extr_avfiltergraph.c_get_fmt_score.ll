; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_get_fmt_score.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfiltergraph.c_get_fmt_score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_SAMPLE_FMT_S32 = common dso_local global i64 0, align 8
@AV_SAMPLE_FMT_FLT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_fmt_score to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fmt_score(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @av_sample_fmt_is_planar(i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @av_sample_fmt_is_planar(i32 %8)
  %10 = icmp ne i64 %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @av_get_bytes_per_sample(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @av_get_bytes_per_sample(i32 %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @av_get_bytes_per_sample(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @av_get_bytes_per_sample(i32 %23)
  %25 = sub nsw i32 %22, %24
  %26 = mul nsw i32 100, %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %38

29:                                               ; preds = %14
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @av_get_bytes_per_sample(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @av_get_bytes_per_sample(i32 %32)
  %34 = sub nsw i32 %31, %33
  %35 = mul nsw i32 10, %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %29, %20
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @av_get_packed_sample_fmt(i32 %39)
  %41 = load i64, i64* @AV_SAMPLE_FMT_S32, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @av_get_packed_sample_fmt(i32 %44)
  %46 = load i64, i64* @AV_SAMPLE_FMT_FLT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 20
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %43, %38
  %52 = load i32, i32* %3, align 4
  %53 = call i64 @av_get_packed_sample_fmt(i32 %52)
  %54 = load i64, i64* @AV_SAMPLE_FMT_FLT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @av_get_packed_sample_fmt(i32 %57)
  %59 = load i64, i64* @AV_SAMPLE_FMT_S32, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %56, %51
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i64 @av_sample_fmt_is_planar(i32) #1

declare dso_local i32 @av_get_bytes_per_sample(i32) #1

declare dso_local i64 @av_get_packed_sample_fmt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
