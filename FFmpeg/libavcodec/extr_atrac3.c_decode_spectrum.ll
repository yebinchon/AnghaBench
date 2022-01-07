; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3.c_decode_spectrum.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_atrac3.c_decode_spectrum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@subband_tab = common dso_local global i32* null, align 8
@ff_atrac_sf_table = common dso_local global float* null, align 8
@inv_max_quant = common dso_local global float* null, align 8
@SAMPLES_PER_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, float*)* @decode_spectrum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_spectrum(i32* %0, float* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i32], align 16
  %13 = alloca [32 x i32], align 16
  %14 = alloca [128 x i32], align 16
  %15 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store float* %1, float** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @get_bits(i32* %16, i32 5)
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @get_bits1(i32* %18)
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %30, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @get_bits(i32* %25, i32 3)
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %20

33:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @get_bits(i32* %45, i32 6)
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %48
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %34

54:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %139, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %142

59:                                               ; preds = %55
  %60 = load i32*, i32** @subband_tab, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32*, i32** @subband_tab, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %128

79:                                               ; preds = %59
  %80 = load i32*, i32** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 0
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @read_quant_spectral_coeffs(i32* %80, i32 %84, i32 %85, i32* %86, i32 %87)
  %89 = load float*, float** @ff_atrac_sf_table, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [32 x i32], [32 x i32]* %13, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %89, i64 %94
  %96 = load float, float* %95, align 4
  %97 = load float*, float** @inv_max_quant, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [32 x i32], [32 x i32]* %12, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %97, i64 %102
  %104 = load float, float* %103, align 4
  %105 = fmul float %96, %104
  store float %105, float* %15, align 4
  store i32 0, i32* %8, align 4
  br label %106

106:                                              ; preds = %122, %79
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [128 x i32], [128 x i32]* %14, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = sitofp i32 %114 to float
  %116 = load float, float* %15, align 4
  %117 = fmul float %115, %116
  %118 = load float*, float** %4, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %118, i64 %120
  store float %117, float* %121, align 4
  br label %122

122:                                              ; preds = %110
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %106

127:                                              ; preds = %106
  br label %138

128:                                              ; preds = %59
  %129 = load float*, float** %4, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %129, i64 %131
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 4
  %136 = trunc i64 %135 to i32
  %137 = call i32 @memset(float* %132, i32 0, i32 %136)
  br label %138

138:                                              ; preds = %128, %127
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %55

142:                                              ; preds = %55
  %143 = load i32*, i32** @subband_tab, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %9, align 4
  %148 = load float*, float** %4, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %148, i64 %150
  %152 = load i32, i32* @SAMPLES_PER_FRAME, align 4
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 4
  %157 = trunc i64 %156 to i32
  %158 = call i32 @memset(float* %151, i32 0, i32 %157)
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @read_quant_spectral_coeffs(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(float*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
