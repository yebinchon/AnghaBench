; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_monitor.c_glfwSetGamma.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_monitor.c_glfwSetGamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16*, i16*, i16*, i32 }

@FLT_MAX = common dso_local global float 0.000000e+00, align 4
@GLFW_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid gamma value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @glfwSetGamma(i32* %0, float %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca [256 x i16], align 16
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store float %1, float* %4, align 4
  %9 = call i32 (...) @_GLFW_REQUIRE_INIT()
  %10 = load float, float* %4, align 4
  %11 = load float, float* %4, align 4
  %12 = fcmp une float %10, %11
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load float, float* %4, align 4
  %15 = fcmp ole float %14, 0.000000e+00
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load float, float* %4, align 4
  %18 = load float, float* @FLT_MAX, align 4
  %19 = fcmp ogt float %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %13, %2
  %21 = load i32, i32* @GLFW_INVALID_VALUE, align 4
  %22 = call i32 @_glfwInputError(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %60

23:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 256
  br i1 %26, label %27, label %50

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 2.550000e+02
  store double %30, double* %8, align 8
  %31 = load double, double* %8, align 8
  %32 = load float, float* %4, align 4
  %33 = fpext float %32 to double
  %34 = fdiv double 1.000000e+00, %33
  %35 = call double @pow(double %31, double %34) #3
  %36 = fmul double %35, 6.553500e+04
  %37 = fadd double %36, 5.000000e-01
  store double %37, double* %8, align 8
  %38 = load double, double* %8, align 8
  %39 = fcmp ogt double %38, 6.553500e+04
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store double 6.553500e+04, double* %8, align 8
  br label %41

41:                                               ; preds = %40, %27
  %42 = load double, double* %8, align 8
  %43 = fptoui double %42 to i16
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 %45
  store i16 %43, i16* %46, align 2
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %24

50:                                               ; preds = %24
  %51 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i16* %51, i16** %52, align 8
  %53 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i16* %53, i16** %54, align 8
  %55 = getelementptr inbounds [256 x i16], [256 x i16]* %6, i64 0, i64 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  store i16* %55, i16** %56, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  store i32 256, i32* %57, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @glfwSetGammaRamp(i32* %58, %struct.TYPE_3__* %7)
  br label %60

60:                                               ; preds = %50, %20
  ret void
}

declare dso_local i32 @_GLFW_REQUIRE_INIT(...) #1

declare dso_local i32 @_glfwInputError(i32, i8*) #1

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

declare dso_local i32 @glfwSetGammaRamp(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
