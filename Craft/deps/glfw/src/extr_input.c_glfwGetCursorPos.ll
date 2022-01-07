; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_input.c_glfwGetCursorPos.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_input.c_glfwGetCursorPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, double, double }

@GLFW_CURSOR_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @glfwGetCursorPos(i32* %0, double* %1, double* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %7, align 8
  %10 = load double*, double** %5, align 8
  %11 = icmp ne double* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load double*, double** %5, align 8
  store double 0.000000e+00, double* %13, align 8
  br label %14

14:                                               ; preds = %12, %3
  %15 = load double*, double** %6, align 8
  %16 = icmp ne double* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load double*, double** %6, align 8
  store double 0.000000e+00, double* %18, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = call i32 (...) @_GLFW_REQUIRE_INIT()
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GLFW_CURSOR_DISABLED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %19
  %27 = load double*, double** %5, align 8
  %28 = icmp ne double* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = load double*, double** %5, align 8
  store double %32, double* %33, align 8
  br label %34

34:                                               ; preds = %29, %26
  %35 = load double*, double** %6, align 8
  %36 = icmp ne double* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load double, double* %39, align 8
  %41 = load double*, double** %6, align 8
  store double %40, double* %41, align 8
  br label %42

42:                                               ; preds = %37, %34
  br label %48

43:                                               ; preds = %19
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %45 = load double*, double** %5, align 8
  %46 = load double*, double** %6, align 8
  %47 = call i32 @_glfwPlatformGetCursorPos(%struct.TYPE_3__* %44, double* %45, double* %46)
  br label %48

48:                                               ; preds = %43, %42
  ret void
}

declare dso_local i32 @_GLFW_REQUIRE_INIT(...) #1

declare dso_local i32 @_glfwPlatformGetCursorPos(%struct.TYPE_3__*, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
