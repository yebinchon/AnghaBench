; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_chromakey.c_do_chromakey_pixel.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_chromakey.c_do_chromakey_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_3__*, double*, double*)* @do_chromakey_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @do_chromakey_pixel(%struct.TYPE_3__* %0, double* %1, double* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %54, %3
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 9
  br i1 %14, label %15, label %57

15:                                               ; preds = %12
  %16 = load double*, double** %6, align 8
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, double* %16, i64 %18
  %20 = load double, double* %19, align 8
  %21 = fptosi double %20 to i32
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %21, %26
  store i32 %27, i32* %9, align 4
  %28 = load double*, double** %7, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %28, i64 %30
  %32 = load double, double* %31, align 8
  %33 = fptosi double %32 to i32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %33, %38
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %42, %45
  %47 = sitofp i32 %46 to double
  %48 = fdiv double %47, 6.502500e+04
  %49 = fptosi double %48 to i32
  %50 = call i64 @sqrt(i32 %49)
  %51 = sitofp i64 %50 to double
  %52 = load double, double* %8, align 8
  %53 = fadd double %52, %51
  store double %53, double* %8, align 8
  br label %54

54:                                               ; preds = %15
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %12

57:                                               ; preds = %12
  %58 = load double, double* %8, align 8
  %59 = fdiv double %58, 9.000000e+00
  store double %59, double* %8, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load double, double* %61, align 8
  %63 = fcmp ogt double %62, 1.000000e-04
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load double, double* %8, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load double, double* %67, align 8
  %69 = fsub double %65, %68
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = fdiv double %69, %72
  %74 = call double @av_clipd(double %73, double 0.000000e+00, double 1.000000e+00)
  %75 = fmul double %74, 2.550000e+02
  store double %75, double* %4, align 8
  br label %85

76:                                               ; preds = %57
  %77 = load double, double* %8, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load double, double* %79, align 8
  %81 = fcmp ogt double %77, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 255, i32 0
  %84 = sitofp i32 %83 to double
  store double %84, double* %4, align 8
  br label %85

85:                                               ; preds = %76, %64
  %86 = load double, double* %4, align 8
  ret double %86
}

declare dso_local i64 @sqrt(i32) #1

declare dso_local double @av_clipd(double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
