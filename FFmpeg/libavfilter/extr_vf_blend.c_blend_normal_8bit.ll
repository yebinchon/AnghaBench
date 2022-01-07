; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_blend.c_blend_normal_8bit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_blend.c_blend_normal_8bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, i32, double*, i32, double*, i32, i32, i32, %struct.TYPE_3__*, double*, i32)* @blend_normal_8bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blend_normal_8bit(double* %0, i32 %1, double* %2, i32 %3, double* %4, i32 %5, i32 %6, i32 %7, %struct.TYPE_3__* %8, double* %9, i32 %10) #0 {
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca double*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_3__*, align 8
  %21 = alloca double*, align 8
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store double* %0, double** %12, align 8
  store i32 %1, i32* %13, align 4
  store double* %2, double** %14, align 8
  store i32 %3, i32* %15, align 4
  store double* %4, double** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %20, align 8
  store double* %9, double** %21, align 8
  store i32 %10, i32* %22, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  store double %28, double* %23, align 8
  store i32 0, i32* %24, align 4
  br label %29

29:                                               ; preds = %75, %11
  %30 = load i32, i32* %24, align 4
  %31 = load i32, i32* %19, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %29
  store i32 0, i32* %25, align 4
  br label %34

34:                                               ; preds = %59, %33
  %35 = load i32, i32* %25, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load double*, double** %12, align 8
  %40 = load i32, i32* %25, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  %43 = load double, double* %42, align 8
  %44 = load double, double* %23, align 8
  %45 = fmul double %43, %44
  %46 = load double*, double** %14, align 8
  %47 = load i32, i32* %25, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = load double, double* %23, align 8
  %52 = fsub double 1.000000e+00, %51
  %53 = fmul double %50, %52
  %54 = fadd double %45, %53
  %55 = load double*, double** %16, align 8
  %56 = load i32, i32* %25, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  store double %54, double* %58, align 8
  br label %59

59:                                               ; preds = %38
  %60 = load i32, i32* %25, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %25, align 4
  br label %34

62:                                               ; preds = %34
  %63 = load i32, i32* %17, align 4
  %64 = load double*, double** %16, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds double, double* %64, i64 %65
  store double* %66, double** %16, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load double*, double** %12, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds double, double* %68, i64 %69
  store double* %70, double** %12, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load double*, double** %14, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds double, double* %72, i64 %73
  store double* %74, double** %14, align 8
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %24, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %24, align 4
  br label %29

78:                                               ; preds = %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
