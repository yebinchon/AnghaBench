; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_count_nalus.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_count_nalus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32*)* @count_nalus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_nalus(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i64], align 16
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @CMSampleBufferGetTotalSampleSize(i32 %17)
  store i64 %18, i64* %12, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @CMSampleBufferGetDataBuffer(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i64, i64* %5, align 8
  %22 = icmp ugt i64 %21, 4
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %24, i32* %4, align 4
  br label %63

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  store i64 0, i64* %15, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 0
  %35 = call i32 @CMBlockBufferCopyDataBytes(i32 %31, i64 %32, i64 %33, i64* %34)
  store i32 %35, i32* %9, align 4
  store i64 0, i64* %16, align 8
  br label %36

36:                                               ; preds = %48, %30
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* %5, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i64, i64* %15, align 8
  %42 = shl i64 %41, 8
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %16, align 8
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %11, i64 0, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %15, align 8
  %47 = or i64 %46, %45
  store i64 %47, i64* %15, align 8
  br label %48

48:                                               ; preds = %40
  %49 = load i64, i64* %16, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %16, align 8
  br label %36

51:                                               ; preds = %36
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %52, %53
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %26

60:                                               ; preds = %26
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %23
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @CMSampleBufferGetTotalSampleSize(i32) #1

declare dso_local i32 @CMSampleBufferGetDataBuffer(i32) #1

declare dso_local i32 @CMBlockBufferCopyDataBytes(i32, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
