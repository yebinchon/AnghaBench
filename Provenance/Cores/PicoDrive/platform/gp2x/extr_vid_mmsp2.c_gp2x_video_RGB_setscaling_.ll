; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_mmsp2.c_gp2x_video_RGB_setscaling_.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gp2x/extr_vid_mmsp2.c_gp2x_video_RGB_setscaling_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memregs = common dso_local global i32* null, align 8
@gp2x_screenaddrs = common dso_local global i64* null, align 8
@gp2x_screenaddrs_use = common dso_local global i64* null, align 8
@memregl = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @gp2x_video_RGB_setscaling_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gp2x_video_RGB_setscaling_(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** @memregs, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 5229
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 9
  %15 = and i32 %14, 3
  store i32 %15, i32* %9, align 4
  %16 = load i64*, i64** @gp2x_screenaddrs, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 320
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %18, %23
  %25 = load i64*, i64** @gp2x_screenaddrs_use, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 %24, i64* %26, align 8
  %27 = load i64*, i64** @gp2x_screenaddrs, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = mul nsw i32 %30, 320
  %32 = load i32, i32* %9, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %29, %34
  %36 = load i64*, i64** @gp2x_screenaddrs_use, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 1
  store i64 %35, i64* %37, align 8
  %38 = load i64*, i64** @gp2x_screenaddrs, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 %41, 320
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %40, %45
  %47 = load i64*, i64** @gp2x_screenaddrs_use, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  store i64 %46, i64* %48, align 8
  %49 = load i64*, i64** @gp2x_screenaddrs, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 3
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = mul nsw i32 %52, 320
  %54 = load i32, i32* %9, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %51, %56
  %58 = load i64*, i64** @gp2x_screenaddrs_use, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 3
  store i64 %57, i64* %59, align 8
  store float 1.024000e+03, float* %7, align 4
  store float 3.200000e+02, float* %8, align 4
  %60 = load i32*, i32** @memregs, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5120
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 256
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %3
  store float 4.890000e+02, float* %7, align 4
  %66 = load i32*, i32** @memregs, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5132
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 287
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store float 2.740000e+02, float* %8, align 4
  br label %78

71:                                               ; preds = %65
  %72 = load i32*, i32** @memregs, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5132
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 239
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store float 3.310000e+02, float* %8, align 4
  br label %77

77:                                               ; preds = %76, %71
  br label %78

78:                                               ; preds = %77, %70
  br label %79

79:                                               ; preds = %78, %3
  %80 = load float, float* %7, align 4
  %81 = fpext float %80 to double
  %82 = load i32, i32* %5, align 4
  %83 = sitofp i32 %82 to double
  %84 = fdiv double %83, 3.200000e+02
  %85 = fmul double %81, %84
  %86 = fptoui double %85 to i16
  store i16 %86, i16* %10, align 2
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 240
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 320
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i16, i16* %10, align 2
  %94 = add i16 %93, -1
  store i16 %94, i16* %10, align 2
  br label %95

95:                                               ; preds = %92, %89, %79
  %96 = load i16, i16* %10, align 2
  %97 = zext i16 %96 to i32
  %98 = load i32*, i32** @memregs, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 5251
  store i32 %97, i32* %99, align 4
  %100 = load float, float* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sitofp i32 %101 to float
  %103 = fmul float %100, %102
  %104 = fpext float %103 to double
  %105 = load i32, i32* %6, align 4
  %106 = sitofp i32 %105 to double
  %107 = fdiv double %106, 2.400000e+02
  %108 = fmul double %104, %107
  %109 = fptoui double %108 to i64
  %110 = load i64*, i64** @memregl, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 2626
  store i64 %109, i64* %111, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
