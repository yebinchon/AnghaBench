; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_do_block_ssd16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_do_block_ssd16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_6__*, %struct.TYPE_5__*, i32*, i32, i32, i32)* @do_block_ssd16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @do_block_ssd16(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = bitcast i32* %20 to double*
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sdiv i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %21, i64 %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %29, i64 %33
  store double* %34, double** %13, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = bitcast i32* %35 to double*
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sdiv i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %36, i64 %41
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %42, i64 %44
  store double* %45, double** %14, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %15, align 4
  store double 0.000000e+00, double* %16, align 8
  store i32 0, i32* %18, align 4
  br label %49

49:                                               ; preds = %89, %6
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %49
  store i32 0, i32* %17, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load double*, double** %14, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  %63 = load double, double* %62, align 8
  %64 = load double*, double** %13, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  %68 = load double, double* %67, align 8
  %69 = fsub double %63, %68
  store double %69, double* %19, align 8
  %70 = load double, double* %19, align 8
  %71 = load double, double* %19, align 8
  %72 = fmul double %70, %71
  %73 = load double, double* %16, align 8
  %74 = fadd double %73, %72
  store double %74, double* %16, align 8
  br label %75

75:                                               ; preds = %58
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  br label %54

78:                                               ; preds = %54
  %79 = load i32, i32* %10, align 4
  %80 = sdiv i32 %79, 2
  %81 = load double*, double** %13, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds double, double* %81, i64 %82
  store double* %83, double** %13, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sdiv i32 %84, 2
  %86 = load double*, double** %14, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds double, double* %86, i64 %87
  store double* %88, double** %14, align 8
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %18, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %18, align 4
  br label %49

92:                                               ; preds = %49
  %93 = load double, double* %16, align 8
  ret double %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
