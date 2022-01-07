; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_blend.c_blend_normal_16bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_blend.c_blend_normal_16bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32, i32*, i32, i32, i32, %struct.TYPE_3__*, double*, i32)* @blend_normal_16bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blend_normal_16bit(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, %struct.TYPE_3__* %8, double* %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_3__*, align 8
  %21 = alloca double*, align 8
  %22 = alloca i32, align 4
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca double*, align 8
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %20, align 8
  store double* %9, double** %21, align 8
  store i32 %10, i32* %22, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = bitcast i32* %29 to double*
  store double* %30, double** %23, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = bitcast i32* %31 to double*
  store double* %32, double** %24, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = bitcast i32* %33 to double*
  store double* %34, double** %25, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  store double %37, double* %26, align 8
  %38 = load i32, i32* %17, align 4
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %13, align 4
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %15, align 4
  %43 = sdiv i32 %42, 2
  store i32 %43, i32* %15, align 4
  store i32 0, i32* %27, align 4
  br label %44

44:                                               ; preds = %90, %11
  %45 = load i32, i32* %27, align 4
  %46 = load i32, i32* %19, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %93

48:                                               ; preds = %44
  store i32 0, i32* %28, align 4
  br label %49

49:                                               ; preds = %74, %48
  %50 = load i32, i32* %28, align 4
  %51 = load i32, i32* %18, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %49
  %54 = load double*, double** %23, align 8
  %55 = load i32, i32* %28, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %54, i64 %56
  %58 = load double, double* %57, align 8
  %59 = load double, double* %26, align 8
  %60 = fmul double %58, %59
  %61 = load double*, double** %24, align 8
  %62 = load i32, i32* %28, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  %65 = load double, double* %64, align 8
  %66 = load double, double* %26, align 8
  %67 = fsub double 1.000000e+00, %66
  %68 = fmul double %65, %67
  %69 = fadd double %60, %68
  %70 = load double*, double** %25, align 8
  %71 = load i32, i32* %28, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %70, i64 %72
  store double %69, double* %73, align 8
  br label %74

74:                                               ; preds = %53
  %75 = load i32, i32* %28, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %28, align 4
  br label %49

77:                                               ; preds = %49
  %78 = load i32, i32* %17, align 4
  %79 = load double*, double** %25, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds double, double* %79, i64 %80
  store double* %81, double** %25, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load double*, double** %23, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds double, double* %83, i64 %84
  store double* %85, double** %23, align 8
  %86 = load i32, i32* %15, align 4
  %87 = load double*, double** %24, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds double, double* %87, i64 %88
  store double* %89, double** %24, align 8
  br label %90

90:                                               ; preds = %77
  %91 = load i32, i32* %27, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %27, align 4
  br label %44

93:                                               ; preds = %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
