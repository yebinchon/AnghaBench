; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264idct_msa.c_ff_h264_idct8_add4_msa.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264idct_msa.c_ff_h264_idct8_add4_msa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scan8 = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_idct8_add4_msa(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %75, %5
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %16, label %78

16:                                               ; preds = %13
  %17 = load i32*, i32** %10, align 8
  %18 = load i64*, i64** @scan8, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %17, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %16
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %56

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = bitcast i32* %31 to i64*
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %33, 16
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %30
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = mul nsw i32 %49, 16
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @ff_h264_idct8_dc_addblk_msa(i32* %47, i32* %53, i32 %54)
  br label %73

56:                                               ; preds = %30, %27
  %57 = load i32*, i32** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %57, i64 %63
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = mul nsw i32 %66, 16
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @ff_h264_idct8_addblk_msa(i32* %64, i32* %70, i32 %71)
  br label %73

73:                                               ; preds = %56, %39
  br label %74

74:                                               ; preds = %73, %16
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 4
  store i32 %77, i32* %11, align 4
  br label %13

78:                                               ; preds = %13
  ret void
}

declare dso_local i32 @ff_h264_idct8_dc_addblk_msa(i32*, i32*, i32) #1

declare dso_local i32 @ff_h264_idct8_addblk_msa(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
