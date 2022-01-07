; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_init.c_pointerHandleAxis.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_init.c_pointerHandleAxis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.wl_pointer = type { i32 }

@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_pointer*, i32, i32, i32)* @pointerHandleAxis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pointerHandleAxis(i8* %0, %struct.wl_pointer* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_pointer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  store i32* %15, i32** %11, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %37

19:                                               ; preds = %5
  store double 1.000000e-01, double* %12, align 8
  %20 = load i32, i32* %9, align 4
  switch i32 %20, label %31 [
    i32 129, label %21
    i32 128, label %26
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* %10, align 4
  %23 = call double @wl_fixed_to_double(i32 %22)
  %24 = load double, double* %12, align 8
  %25 = fmul double %23, %24
  store double %25, double* %13, align 8
  store double 0.000000e+00, double* %14, align 8
  br label %32

26:                                               ; preds = %19
  store double 0.000000e+00, double* %13, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call double @wl_fixed_to_double(i32 %27)
  %29 = load double, double* %12, align 8
  %30 = fmul double %28, %29
  store double %30, double* %14, align 8
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %26, %21
  %33 = load i32*, i32** %11, align 8
  %34 = load double, double* %13, align 8
  %35 = load double, double* %14, align 8
  %36 = call i32 @_glfwInputScroll(i32* %33, double %34, double %35)
  br label %37

37:                                               ; preds = %32, %18
  ret void
}

declare dso_local double @wl_fixed_to_double(i32) #1

declare dso_local i32 @_glfwInputScroll(i32*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
