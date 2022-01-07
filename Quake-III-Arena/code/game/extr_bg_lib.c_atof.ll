; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_lib.c_atof.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_bg_lib.c_atof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @atof(i8* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  br label %8

8:                                                ; preds = %18, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp sle i32 %11, 32
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store double 0.000000e+00, double* %2, align 8
  br label %99

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  br label %8

21:                                               ; preds = %8
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  switch i32 %24, label %31 [
    i32 43, label %25
    i32 45, label %28
  ]

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  store float 1.000000e+00, float* %4, align 4
  br label %32

28:                                               ; preds = %21
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  store float -1.000000e+00, float* %4, align 4
  br label %32

31:                                               ; preds = %21
  store float 1.000000e+00, float* %4, align 4
  br label %32

32:                                               ; preds = %31, %28, %25
  store float 0.000000e+00, float* %5, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 46
  br i1 %38, label %39, label %61

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %59, %39
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %3, align 8
  %43 = load i8, i8* %41, align 1
  %44 = sext i8 %43 to i32
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 48
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 57
  br i1 %49, label %50, label %51

50:                                               ; preds = %47, %40
  br label %60

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 48
  store i32 %53, i32* %6, align 4
  %54 = load float, float* %5, align 4
  %55 = fmul float %54, 1.000000e+01
  %56 = load i32, i32* %6, align 4
  %57 = sitofp i32 %56 to float
  %58 = fadd float %55, %57
  store float %58, float* %5, align 4
  br label %59

59:                                               ; preds = %51
  br i1 true, label %40, label %60

60:                                               ; preds = %59, %50
  br label %64

61:                                               ; preds = %32
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %3, align 8
  br label %64

64:                                               ; preds = %61, %60
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, 46
  br i1 %66, label %67, label %94

67:                                               ; preds = %64
  store double 1.000000e-01, double* %7, align 8
  br label %68

68:                                               ; preds = %92, %67
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %3, align 8
  %71 = load i8, i8* %69, align 1
  %72 = sext i8 %71 to i32
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 48
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  %77 = icmp sgt i32 %76, 57
  br i1 %77, label %78, label %79

78:                                               ; preds = %75, %68
  br label %93

79:                                               ; preds = %75
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 %80, 48
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sitofp i32 %82 to double
  %84 = load double, double* %7, align 8
  %85 = fmul double %83, %84
  %86 = load float, float* %5, align 4
  %87 = fpext float %86 to double
  %88 = fadd double %87, %85
  %89 = fptrunc double %88 to float
  store float %89, float* %5, align 4
  %90 = load double, double* %7, align 8
  %91 = fmul double %90, 1.000000e-01
  store double %91, double* %7, align 8
  br label %92

92:                                               ; preds = %79
  br i1 true, label %68, label %93

93:                                               ; preds = %92, %78
  br label %94

94:                                               ; preds = %93, %64
  %95 = load float, float* %5, align 4
  %96 = load float, float* %4, align 4
  %97 = fmul float %95, %96
  %98 = fpext float %97 to double
  store double %98, double* %2, align 8
  br label %99

99:                                               ; preds = %94, %17
  %100 = load double, double* %2, align 8
  ret double %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
