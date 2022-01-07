; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_crystalizer.c_filter_dbl.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_crystalizer.c_filter_dbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i8**, i32, i32, float, i32)* @filter_dbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_dbl(i8** %0, i8** %1, i8** %2, i32 %3, i32 %4, float %5, i32 %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  store i8** %0, i8*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load i8**, i8*** %10, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to double*
  store double* %24, double** %15, align 8
  %25 = load i8**, i8*** %8, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to double*
  store double* %28, double** %16, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to double*
  store double* %32, double** %17, align 8
  store i32 0, i32* %18, align 4
  br label %33

33:                                               ; preds = %95, %7
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %98

37:                                               ; preds = %33
  store i32 0, i32* %19, align 4
  br label %38

38:                                               ; preds = %83, %37
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %38
  %43 = load double*, double** %15, align 8
  %44 = load i32, i32* %19, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  %47 = load double, double* %46, align 8
  store double %47, double* %20, align 8
  %48 = load double, double* %20, align 8
  %49 = load double, double* %20, align 8
  %50 = load double*, double** %17, align 8
  %51 = load i32, i32* %19, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %50, i64 %52
  %54 = load double, double* %53, align 8
  %55 = fsub double %49, %54
  %56 = load float, float* %13, align 4
  %57 = fpext float %56 to double
  %58 = fmul double %55, %57
  %59 = fadd double %48, %58
  %60 = load double*, double** %16, align 8
  %61 = load i32, i32* %19, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  store double %59, double* %63, align 8
  %64 = load double, double* %20, align 8
  %65 = load double*, double** %17, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %65, i64 %67
  store double %64, double* %68, align 8
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %42
  %72 = load double*, double** %16, align 8
  %73 = load i32, i32* %19, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds double, double* %72, i64 %74
  %76 = load double, double* %75, align 8
  %77 = call double @av_clipd(double %76, i32 -1, i32 1)
  %78 = load double*, double** %16, align 8
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  store double %77, double* %81, align 8
  br label %82

82:                                               ; preds = %71, %42
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %19, align 4
  br label %38

86:                                               ; preds = %38
  %87 = load i32, i32* %19, align 4
  %88 = load double*, double** %16, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds double, double* %88, i64 %89
  store double* %90, double** %16, align 8
  %91 = load i32, i32* %19, align 4
  %92 = load double*, double** %15, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds double, double* %92, i64 %93
  store double* %94, double** %15, align 8
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %18, align 4
  br label %33

98:                                               ; preds = %33
  ret void
}

declare dso_local double @av_clipd(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
