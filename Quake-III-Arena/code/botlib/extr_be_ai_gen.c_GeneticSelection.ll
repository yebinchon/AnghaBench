; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_gen.c_GeneticSelection.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/botlib/extr_be_ai_gen.c_GeneticSelection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GeneticSelection(i32 %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store float* %1, float** %5, align 8
  store float 0.000000e+00, float* %6, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %30, %2
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load float*, float** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %15, i64 %17
  %19 = load float, float* %18, align 4
  %20 = fcmp olt float %19, 0.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %30

22:                                               ; preds = %14
  %23 = load float*, float** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %23, i64 %25
  %27 = load float, float* %26, align 4
  %28 = load float, float* %6, align 4
  %29 = fadd float %28, %27
  store float %29, float* %6, align 4
  br label %30

30:                                               ; preds = %22, %21
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load float, float* %6, align 4
  %35 = fcmp ogt float %34, 0.000000e+00
  br i1 %35, label %36, label %70

36:                                               ; preds = %33
  %37 = call i32 (...) @random()
  %38 = sitofp i32 %37 to float
  %39 = load float, float* %6, align 4
  %40 = fmul float %38, %39
  store float %40, float* %7, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %66, %36
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load float*, float** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fcmp olt float %50, 0.000000e+00
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %66

53:                                               ; preds = %45
  %54 = load float*, float** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %54, i64 %56
  %58 = load float, float* %57, align 4
  %59 = load float, float* %6, align 4
  %60 = fsub float %59, %58
  store float %60, float* %6, align 4
  %61 = load float, float* %6, align 4
  %62 = fcmp ole float %61, 0.000000e+00
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %96

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %52
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %41

69:                                               ; preds = %41
  br label %70

70:                                               ; preds = %69, %33
  %71 = call i32 (...) @random()
  %72 = load i32, i32* %4, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %92, %70
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %74
  %79 = load float*, float** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  %83 = load float, float* %82, align 4
  %84 = fcmp oge float %83, 0.000000e+00
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %96

87:                                               ; preds = %78
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  %90 = load i32, i32* %4, align 4
  %91 = srem i32 %89, %90
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %74

95:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %85, %63
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
