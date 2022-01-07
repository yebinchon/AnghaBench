; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_handle_mouse_input.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_handle_mouse_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, double }

@g = common dso_local global %struct.TYPE_6__* null, align 8
@GLFW_CURSOR = common dso_local global i32 0, align 4
@GLFW_CURSOR_DISABLED = common dso_local global i64 0, align 8
@handle_mouse_input.px = internal global double 0.000000e+00, align 8
@handle_mouse_input.py = internal global double 0.000000e+00, align 8
@INVERT_MOUSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_mouse_input() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca float, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GLFW_CURSOR, align 4
  %10 = call i64 @glfwGetInputMode(i32 %8, i32 %9)
  %11 = load i64, i64* @GLFW_CURSOR_DISABLED, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %1, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %2, align 8
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %108

20:                                               ; preds = %0
  %21 = load double, double* @handle_mouse_input.px, align 8
  %22 = fcmp une double %21, 0.000000e+00
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load double, double* @handle_mouse_input.py, align 8
  %25 = fcmp une double %24, 0.000000e+00
  br i1 %25, label %26, label %108

26:                                               ; preds = %23, %20
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @glfwGetCursorPos(i32 %29, double* %3, double* %4)
  store float 0x3F647AE140000000, float* %5, align 4
  %31 = load double, double* %3, align 8
  %32 = load double, double* @handle_mouse_input.px, align 8
  %33 = fsub double %31, %32
  %34 = load float, float* %5, align 4
  %35 = fpext float %34 to double
  %36 = fmul double %33, %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sitofp i64 %39 to double
  %41 = fadd double %40, %36
  %42 = fptosi double %41 to i64
  store i64 %42, i64* %38, align 8
  %43 = load i64, i64* @INVERT_MOUSE, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %26
  %46 = load double, double* %4, align 8
  %47 = load double, double* @handle_mouse_input.py, align 8
  %48 = fsub double %46, %47
  %49 = load float, float* %5, align 4
  %50 = fpext float %49 to double
  %51 = fmul double %48, %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = fadd double %54, %51
  store double %55, double* %53, align 8
  br label %67

56:                                               ; preds = %26
  %57 = load double, double* %4, align 8
  %58 = load double, double* @handle_mouse_input.py, align 8
  %59 = fsub double %57, %58
  %60 = load float, float* %5, align 4
  %61 = fpext float %60 to double
  %62 = fmul double %59, %61
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load double, double* %64, align 8
  %66 = fsub double %65, %62
  store double %66, double* %64, align 8
  br label %67

67:                                               ; preds = %56, %45
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = call i64 @RADIANS(i32 360)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %78

78:                                               ; preds = %72, %67
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @RADIANS(i32 360)
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = call i64 @RADIANS(i32 360)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %88, %85
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %84, %78
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load double, double* %92, align 8
  %94 = call i64 @RADIANS(i32 90)
  %95 = sub nsw i64 0, %94
  %96 = call double @MAX(double %93, i64 %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store double %96, double* %98, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load double, double* %100, align 8
  %102 = call i64 @RADIANS(i32 90)
  %103 = call double @MIN(double %101, i64 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store double %103, double* %105, align 8
  %106 = load double, double* %3, align 8
  store double %106, double* @handle_mouse_input.px, align 8
  %107 = load double, double* %4, align 8
  store double %107, double* @handle_mouse_input.py, align 8
  br label %113

108:                                              ; preds = %23, %0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** @g, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @glfwGetCursorPos(i32 %111, double* @handle_mouse_input.px, double* @handle_mouse_input.py)
  br label %113

113:                                              ; preds = %108, %90
  ret void
}

declare dso_local i64 @glfwGetInputMode(i32, i32) #1

declare dso_local i32 @glfwGetCursorPos(i32, double*, double*) #1

declare dso_local i64 @RADIANS(i32) #1

declare dso_local double @MAX(double, i64) #1

declare dso_local double @MIN(double, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
