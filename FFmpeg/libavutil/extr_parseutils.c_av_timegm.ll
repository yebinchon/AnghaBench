; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_parseutils.c_av_timegm.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_parseutils.c_av_timegm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @av_timegm(%struct.tm* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %2, align 8
  %7 = load %struct.tm*, %struct.tm** %2, align 8
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 1900
  store i32 %10, i32* %4, align 4
  %11 = load %struct.tm*, %struct.tm** %2, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = load %struct.tm*, %struct.tm** %2, align 8
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 3
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 12
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %20, %1
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 153, %27
  %29 = sub nsw i32 %28, 457
  %30 = sdiv i32 %29, 5
  %31 = add nsw i32 %26, %30
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 365, %32
  %34 = add nsw i32 %31, %33
  %35 = load i32, i32* %4, align 4
  %36 = sdiv i32 %35, 4
  %37 = add nsw i32 %34, %36
  %38 = load i32, i32* %4, align 4
  %39 = sdiv i32 %38, 100
  %40 = sub nsw i32 %37, %39
  %41 = load i32, i32* %4, align 4
  %42 = sdiv i32 %41, 400
  %43 = add nsw i32 %40, %42
  %44 = sub nsw i32 %43, 719469
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 86400, %45
  store i64 %46, i64* %3, align 8
  %47 = load %struct.tm*, %struct.tm** %2, align 8
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 3600, %49
  %51 = load %struct.tm*, %struct.tm** %2, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 60, %53
  %55 = add nsw i32 %50, %54
  %56 = sext i32 %55 to i64
  %57 = load %struct.tm*, %struct.tm** %2, align 8
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = load i64, i64* %3, align 8
  %62 = add nsw i64 %61, %60
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
