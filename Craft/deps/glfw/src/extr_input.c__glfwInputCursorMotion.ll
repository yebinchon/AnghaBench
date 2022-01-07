; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_input.c__glfwInputCursorMotion.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_input.c__glfwInputCursorMotion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, double, double, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32*, double, double)* }

@GLFW_CURSOR_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwInputCursorMotion(%struct.TYPE_5__* %0, double %1, double %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GLFW_CURSOR_DISABLED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load double, double* %5, align 8
  %14 = fcmp oeq double %13, 0.000000e+00
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load double, double* %6, align 8
  %17 = fcmp oeq double %16, 0.000000e+00
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %52

19:                                               ; preds = %15, %12
  %20 = load double, double* %5, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load double, double* %22, align 8
  %24 = fadd double %23, %20
  store double %24, double* %22, align 8
  %25 = load double, double* %6, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load double, double* %27, align 8
  %29 = fadd double %28, %25
  store double %29, double* %27, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  store double %32, double* %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load double, double* %34, align 8
  store double %35, double* %6, align 8
  br label %36

36:                                               ; preds = %19, %3
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (i32*, double, double)*, i32 (i32*, double, double)** %39, align 8
  %41 = icmp ne i32 (i32*, double, double)* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32 (i32*, double, double)*, i32 (i32*, double, double)** %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = bitcast %struct.TYPE_5__* %47 to i32*
  %49 = load double, double* %5, align 8
  %50 = load double, double* %6, align 8
  %51 = call i32 %46(i32* %48, double %49, double %50)
  br label %52

52:                                               ; preds = %18, %42, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
