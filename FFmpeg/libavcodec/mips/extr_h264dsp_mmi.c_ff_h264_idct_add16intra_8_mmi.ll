; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_mmi.c_ff_h264_idct_add16intra_8_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_mmi.c_ff_h264_idct_add16intra_8_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scan8 = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_idct_add16intra_8_mmi(i64* %0, i32* %1, i64* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %67, %5
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %70

15:                                               ; preds = %12
  %16 = load i64*, i64** %10, align 8
  %17 = load i64*, i64** @scan8, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i64, i64* %16, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %15
  %26 = load i64*, i64** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %26, i64 %32
  %34 = load i64*, i64** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %35, 16
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ff_h264_idct_add_8_mmi(i64* %33, i64* %38, i32 %39)
  br label %66

41:                                               ; preds = %15
  %42 = load i64*, i64** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = mul nsw i32 %43, 16
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %42, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %41
  %50 = load i64*, i64** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %50, i64 %56
  %58 = load i64*, i64** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = mul nsw i32 %59, 16
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %58, i64 %61
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @ff_h264_idct_dc_add_8_mmi(i64* %57, i64* %62, i32 %63)
  br label %65

65:                                               ; preds = %49, %41
  br label %66

66:                                               ; preds = %65, %25
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %12

70:                                               ; preds = %12
  ret void
}

declare dso_local i32 @ff_h264_idct_add_8_mmi(i64*, i64*, i32) #1

declare dso_local i32 @ff_h264_idct_dc_add_8_mmi(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
