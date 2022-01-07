; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_lib.c__atof.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_lib.c__atof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @_atof(i8** %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i8** %0, i8*** %3, align 8
  store i32 48, i32* %7, align 4
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %23, %1
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp sle i32 %14, 32
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i8*, i8** %4, align 8
  %22 = load i8**, i8*** %3, align 8
  store i8* %21, i8** %22, align 8
  store double 0.000000e+00, double* %2, align 8
  br label %102

23:                                               ; preds = %16
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  br label %11

26:                                               ; preds = %11
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  switch i32 %29, label %36 [
    i32 43, label %30
    i32 45, label %33
  ]

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  store float 1.000000e+00, float* %5, align 4
  br label %37

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  store float -1.000000e+00, float* %5, align 4
  br label %37

36:                                               ; preds = %26
  store float 1.000000e+00, float* %5, align 4
  br label %37

37:                                               ; preds = %36, %33, %30
  store float 0.000000e+00, float* %6, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 46
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %63, %43
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  %47 = load i8, i8* %45, align 1
  %48 = sext i8 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 48
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = icmp sgt i32 %52, 57
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %44
  br label %64

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 48
  store i32 %57, i32* %7, align 4
  %58 = load float, float* %6, align 4
  %59 = fmul float %58, 1.000000e+01
  %60 = load i32, i32* %7, align 4
  %61 = sitofp i32 %60 to float
  %62 = fadd float %59, %61
  store float %62, float* %6, align 4
  br label %63

63:                                               ; preds = %55
  br i1 true, label %44, label %64

64:                                               ; preds = %63, %54
  br label %65

65:                                               ; preds = %64, %37
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 46
  br i1 %67, label %68, label %95

68:                                               ; preds = %65
  store double 1.000000e-01, double* %8, align 8
  br label %69

69:                                               ; preds = %93, %68
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  %72 = load i8, i8* %70, align 1
  %73 = sext i8 %72 to i32
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 48
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  %78 = icmp sgt i32 %77, 57
  br i1 %78, label %79, label %80

79:                                               ; preds = %76, %69
  br label %94

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %81, 48
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sitofp i32 %83 to double
  %85 = load double, double* %8, align 8
  %86 = fmul double %84, %85
  %87 = load float, float* %6, align 4
  %88 = fpext float %87 to double
  %89 = fadd double %88, %86
  %90 = fptrunc double %89 to float
  store float %90, float* %6, align 4
  %91 = load double, double* %8, align 8
  %92 = fmul double %91, 1.000000e-01
  store double %92, double* %8, align 8
  br label %93

93:                                               ; preds = %80
  br i1 true, label %69, label %94

94:                                               ; preds = %93, %79
  br label %95

95:                                               ; preds = %94, %65
  %96 = load i8*, i8** %4, align 8
  %97 = load i8**, i8*** %3, align 8
  store i8* %96, i8** %97, align 8
  %98 = load float, float* %6, align 4
  %99 = load float, float* %5, align 4
  %100 = fmul float %98, %99
  %101 = fpext float %100 to double
  store double %101, double* %2, align 8
  br label %102

102:                                              ; preds = %95, %20
  %103 = load double, double* %2, align 8
  ret double %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
