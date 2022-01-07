; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_crystalizer.c_filter_dblp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_crystalizer.c_filter_dblp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i8**, i32, i32, float, i32)* @filter_dblp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_dblp(i8** %0, i8** %1, i8** %2, i32 %3, i32 %4, float %5, i32 %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double, align 8
  store i8** %0, i8*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %89, %7
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %92

25:                                               ; preds = %21
  %26 = load i8**, i8*** %10, align 8
  %27 = load i32, i32* %16, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to double*
  store double* %31, double** %17, align 8
  %32 = load i8**, i8*** %8, align 8
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to double*
  store double* %37, double** %18, align 8
  %38 = load i8**, i8*** %9, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = bitcast i8* %42 to double*
  store double* %43, double** %19, align 8
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %85, %25
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %44
  %49 = load double*, double** %17, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %49, i64 %51
  %53 = load double, double* %52, align 8
  store double %53, double* %20, align 8
  %54 = load double, double* %20, align 8
  %55 = load double, double* %20, align 8
  %56 = load double*, double** %19, align 8
  %57 = getelementptr inbounds double, double* %56, i64 0
  %58 = load double, double* %57, align 8
  %59 = fsub double %55, %58
  %60 = load float, float* %13, align 4
  %61 = fpext float %60 to double
  %62 = fmul double %59, %61
  %63 = fadd double %54, %62
  %64 = load double*, double** %18, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  store double %63, double* %67, align 8
  %68 = load double, double* %20, align 8
  %69 = load double*, double** %19, align 8
  %70 = getelementptr inbounds double, double* %69, i64 0
  store double %68, double* %70, align 8
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %48
  %74 = load double*, double** %18, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %74, i64 %76
  %78 = load double, double* %77, align 8
  %79 = call double @av_clipd(double %78, i32 -1, i32 1)
  %80 = load double*, double** %18, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, double* %80, i64 %82
  store double %79, double* %83, align 8
  br label %84

84:                                               ; preds = %73, %48
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  br label %44

88:                                               ; preds = %44
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %16, align 4
  br label %21

92:                                               ; preds = %21
  ret void
}

declare dso_local double @av_clipd(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
