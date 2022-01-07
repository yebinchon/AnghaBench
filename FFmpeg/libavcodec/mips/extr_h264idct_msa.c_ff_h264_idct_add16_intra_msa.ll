; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264idct_msa.c_ff_h264_idct_add16_intra_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264idct_msa.c_ff_h264_idct_add16_intra_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scan8 = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_idct_add16_intra_msa(i64* %0, i32* %1, i32* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %70, %5
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %73

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
  br i1 %24, label %25, label %42

25:                                               ; preds = %15
  %26 = load i64*, i64** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %26, i64 %32
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %35, 16
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @ff_h264_idct_add_msa(i64* %33, i32* %39, i32 %40)
  br label %69

42:                                               ; preds = %15
  %43 = load i32*, i32** %8, align 8
  %44 = bitcast i32* %43 to i64*
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %45, 16
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %44, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %42
  %52 = load i64*, i64** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %52, i64 %58
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = mul nsw i32 %61, 16
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @ff_h264_idct4x4_addblk_dc_msa(i64* %59, i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %51, %42
  br label %69

69:                                               ; preds = %68, %25
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %12

73:                                               ; preds = %12
  ret void
}

declare dso_local i32 @ff_h264_idct_add_msa(i64*, i32*, i32) #1

declare dso_local i32 @ff_h264_idct4x4_addblk_dc_msa(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
