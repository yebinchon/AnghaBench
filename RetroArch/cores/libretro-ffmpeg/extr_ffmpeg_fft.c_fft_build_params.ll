; ModuleID = '/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_build_params.c'
source_filename = "/home/carl/AnghaBench/RetroArch/cores/libretro-ffmpeg/extr_ffmpeg_fft.c_fft_build_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@M_PI = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fft_build_params(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 1, %20
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %133, %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %138

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %129, %26
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add i32 %30, %31
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %132

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub i32 %35, %36
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = sitofp i32 %38 to float
  %40 = fmul float -1.000000e+00, %39
  %41 = load i32, i32* %11, align 4
  %42 = uitofp i32 %41 to float
  %43 = fdiv float %40, %42
  store float %43, float* %14, align 4
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add i32 %45, %46
  store i32 %47, i32* %16, align 4
  %48 = load float, float* @M_PI, align 4
  %49 = load float, float* %14, align 4
  %50 = fmul float %48, %49
  %51 = call i64 @exp_imag(float %50)
  %52 = bitcast %struct.TYPE_3__* %17 to i64*
  store i64 %51, i64* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %34
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @bitinverse(i32 %56, i32 %57)
  br label %61

59:                                               ; preds = %34
  %60 = load i32, i32* %15, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i32 [ %58, %55 ], [ %60, %59 ]
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @bitinverse(i32 %66, i32 %67)
  br label %71

69:                                               ; preds = %61
  %70 = load i32, i32* %16, align 4
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi i32 [ %68, %65 ], [ %70, %69 ]
  store i32 %72, i32* %19, align 4
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %18, align 4
  %82 = shl i32 %81, 16
  %83 = load i32, i32* %19, align 4
  %84 = or i32 %82, %83
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %15, align 4
  %87 = mul i32 2, %86
  %88 = add i32 %87, 0
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  store i32 %84, i32* %90, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @vec2_packHalf2x16(i32 %93, i32 %96)
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %15, align 4
  %100 = mul i32 2, %99
  %101 = add i32 %100, 1
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  store i32 %97, i32* %103, align 4
  %104 = load i32, i32* %18, align 4
  %105 = shl i32 %104, 16
  %106 = load i32, i32* %19, align 4
  %107 = or i32 %105, %106
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %16, align 4
  %110 = mul i32 2, %109
  %111 = add i32 %110, 0
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 0, %116
  %118 = load i32*, i32** %12, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 0, %120
  %122 = call i32 @vec2_packHalf2x16(i32 %117, i32 %121)
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %16, align 4
  %125 = mul i32 2, %124
  %126 = add i32 %125, 1
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  store i32 %122, i32* %128, align 4
  br label %129

129:                                              ; preds = %71
  %130 = load i32, i32* %10, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %28

132:                                              ; preds = %28
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %11, align 4
  %135 = shl i32 %134, 1
  %136 = load i32, i32* %9, align 4
  %137 = add i32 %136, %135
  store i32 %137, i32* %9, align 4
  br label %22

138:                                              ; preds = %22
  ret void
}

declare dso_local i64 @exp_imag(float) #1

declare dso_local i32 @bitinverse(i32, i32) #1

declare dso_local i32 @vec2_packHalf2x16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
