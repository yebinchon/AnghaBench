; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_monochrome_color_location.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_ciescope.c_monochrome_color_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spectral_chromaticity = common dso_local global double** null, align 8
@LUV = common dso_local global i32 0, align 4
@UCS = common dso_local global i32 0, align 4
@XYY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, i32, i32, i32, i32*, i32*)* @monochrome_color_location to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monochrome_color_location(double %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store double %0, double* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load double, double* %7, align 8
  %24 = fsub double %23, 3.600000e+02
  %25 = fptosi double %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load double**, double*** @spectral_chromaticity, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double*, double** %26, i64 %28
  %30 = load double*, double** %29, align 8
  %31 = getelementptr inbounds double, double* %30, i64 0
  %32 = load double, double* %31, align 8
  store double %32, double* %14, align 8
  %33 = load double**, double*** @spectral_chromaticity, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double*, double** %33, i64 %35
  %37 = load double*, double** %36, align 8
  %38 = getelementptr inbounds double, double* %37, i64 1
  %39 = load double, double* %38, align 8
  store double %39, double* %15, align 8
  %40 = load double**, double*** @spectral_chromaticity, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double*, double** %40, i64 %42
  %44 = load double*, double** %43, align 8
  %45 = getelementptr inbounds double, double* %44, i64 2
  %46 = load double, double* %45, align 8
  store double %46, double* %16, align 8
  %47 = load double, double* %14, align 8
  %48 = load double, double* %14, align 8
  %49 = load double, double* %15, align 8
  %50 = fadd double %48, %49
  %51 = load double, double* %16, align 8
  %52 = fadd double %50, %51
  %53 = fdiv double %47, %52
  store double %53, double* %17, align 8
  %54 = load double, double* %15, align 8
  %55 = load double, double* %14, align 8
  %56 = load double, double* %15, align 8
  %57 = fadd double %55, %56
  %58 = load double, double* %16, align 8
  %59 = fadd double %57, %58
  %60 = fdiv double %54, %59
  store double %60, double* %18, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @LUV, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %6
  %65 = load double, double* %17, align 8
  %66 = load double, double* %18, align 8
  %67 = call i32 @xy_to_upvp(double %65, double %66, double* %19, double* %20)
  %68 = load double, double* %19, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sitofp i32 %70 to double
  %72 = fmul double %68, %71
  %73 = fptosi double %72 to i32
  %74 = load i32*, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sitofp i32 %76 to double
  %78 = load double, double* %20, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sitofp i32 %80 to double
  %82 = fmul double %78, %81
  %83 = fsub double %77, %82
  %84 = fptosi double %83 to i32
  %85 = load i32*, i32** %12, align 8
  store i32 %84, i32* %85, align 4
  br label %139

86:                                               ; preds = %6
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @UCS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %86
  %91 = load double, double* %17, align 8
  %92 = load double, double* %18, align 8
  %93 = call i32 @xy_to_uv(double %91, double %92, double* %21, double* %22)
  %94 = load double, double* %21, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %95, 1
  %97 = sitofp i32 %96 to double
  %98 = fmul double %94, %97
  %99 = fptosi double %98 to i32
  %100 = load i32*, i32** %11, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sitofp i32 %102 to double
  %104 = load double, double* %22, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sitofp i32 %106 to double
  %108 = fmul double %104, %107
  %109 = fsub double %103, %108
  %110 = fptosi double %109 to i32
  %111 = load i32*, i32** %12, align 8
  store i32 %110, i32* %111, align 4
  br label %138

112:                                              ; preds = %86
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @XYY, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %112
  %117 = load double, double* %17, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sitofp i32 %119 to double
  %121 = fmul double %117, %120
  %122 = fptosi double %121 to i32
  %123 = load i32*, i32** %11, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* %9, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sitofp i32 %125 to double
  %127 = load double, double* %18, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sitofp i32 %129 to double
  %131 = fmul double %127, %130
  %132 = fsub double %126, %131
  %133 = fptosi double %132 to i32
  %134 = load i32*, i32** %12, align 8
  store i32 %133, i32* %134, align 4
  br label %137

135:                                              ; preds = %112
  %136 = call i32 @av_assert0(i32 0)
  br label %137

137:                                              ; preds = %135, %116
  br label %138

138:                                              ; preds = %137, %90
  br label %139

139:                                              ; preds = %138, %64
  ret void
}

declare dso_local i32 @xy_to_upvp(double, double, double*, double*) #1

declare dso_local i32 @xy_to_uv(double, double, double*, double*) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
