; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotChangeViewAngle.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_main.c_BotChangeViewAngle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @BotChangeViewAngle(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %9 = load float, float* %5, align 4
  %10 = call float @AngleMod(float %9)
  store float %10, float* %5, align 4
  %11 = load float, float* %6, align 4
  %12 = call float @AngleMod(float %11)
  store float %12, float* %6, align 4
  %13 = load float, float* %5, align 4
  %14 = load float, float* %6, align 4
  %15 = fcmp oeq float %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load float, float* %5, align 4
  store float %17, float* %4, align 4
  br label %69

18:                                               ; preds = %3
  %19 = load float, float* %6, align 4
  %20 = load float, float* %5, align 4
  %21 = fsub float %19, %20
  store float %21, float* %8, align 4
  %22 = load float, float* %6, align 4
  %23 = load float, float* %5, align 4
  %24 = fcmp ogt float %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load float, float* %8, align 4
  %27 = fpext float %26 to double
  %28 = fcmp ogt double %27, 1.800000e+02
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load float, float* %8, align 4
  %31 = fpext float %30 to double
  %32 = fsub double %31, 3.600000e+02
  %33 = fptrunc double %32 to float
  store float %33, float* %8, align 4
  br label %34

34:                                               ; preds = %29, %25
  br label %45

35:                                               ; preds = %18
  %36 = load float, float* %8, align 4
  %37 = fpext float %36 to double
  %38 = fcmp olt double %37, -1.800000e+02
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load float, float* %8, align 4
  %41 = fpext float %40 to double
  %42 = fadd double %41, 3.600000e+02
  %43 = fptrunc double %42 to float
  store float %43, float* %8, align 4
  br label %44

44:                                               ; preds = %39, %35
  br label %45

45:                                               ; preds = %44, %34
  %46 = load float, float* %8, align 4
  %47 = fcmp ogt float %46, 0.000000e+00
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load float, float* %8, align 4
  %50 = load float, float* %7, align 4
  %51 = fcmp ogt float %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load float, float* %7, align 4
  store float %53, float* %8, align 4
  br label %54

54:                                               ; preds = %52, %48
  br label %64

55:                                               ; preds = %45
  %56 = load float, float* %8, align 4
  %57 = load float, float* %7, align 4
  %58 = fneg float %57
  %59 = fcmp olt float %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load float, float* %7, align 4
  %62 = fneg float %61
  store float %62, float* %8, align 4
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %54
  %65 = load float, float* %5, align 4
  %66 = load float, float* %8, align 4
  %67 = fadd float %65, %66
  %68 = call float @AngleMod(float %67)
  store float %68, float* %4, align 4
  br label %69

69:                                               ; preds = %64, %16
  %70 = load float, float* %4, align 4
  ret float %70
}

declare dso_local float @AngleMod(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
