; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_encode_dc_coeffs.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_proresenc_anatoliy.c_encode_dc_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_DC_CB = common dso_local global i32 0, align 4
@dc_codebook = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i32, i32*)* @encode_dc_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_dc_coeffs(i32* %0, i64* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %21, 16384
  %23 = call i32 @QSCALE(i32* %18, i32 0, i64 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @TO_GOLOMB(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @FIRST_DC_CB, align 4
  %29 = call i32 @encode_codeword(i32* %26, i32 %27, i32 %28)
  store i32 5, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 64, i32* %13, align 4
  store i32 1, i32* %11, align 4
  br label %30

30:                                               ; preds = %65, %4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, 16384
  %42 = call i32 @QSCALE(i32* %35, i32 0, i64 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @DIFF_SIGN(i32 %46, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @get_level(i32 %49)
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @TO_GOLOMB2(i32 %50, i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %17, align 4
  %55 = load i32*, i32** @dc_codebook, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @FFMIN(i32 %56, i32 6)
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @encode_codeword(i32* %53, i32 %54, i32 %59)
  %61 = load i32, i32* %17, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %15, align 4
  %63 = ashr i32 %62, 31
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %34
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 64
  store i32 %69, i32* %13, align 4
  br label %30

70:                                               ; preds = %30
  ret void
}

declare dso_local i32 @QSCALE(i32*, i32, i64) #1

declare dso_local i32 @TO_GOLOMB(i32) #1

declare dso_local i32 @encode_codeword(i32*, i32, i32) #1

declare dso_local i32 @DIFF_SIGN(i32, i32) #1

declare dso_local i32 @TO_GOLOMB2(i32, i32) #1

declare dso_local i32 @get_level(i32) #1

declare dso_local i64 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
