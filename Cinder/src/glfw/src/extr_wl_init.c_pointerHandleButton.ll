; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_init.c_pointerHandleButton.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_init.c_pointerHandleButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.wl_pointer = type { i32 }

@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BTN_LEFT = common dso_local global i64 0, align 8
@WL_POINTER_BUTTON_STATE_PRESSED = common dso_local global i64 0, align 8
@GLFW_PRESS = common dso_local global i32 0, align 4
@GLFW_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_pointer*, i64, i64, i64, i64)* @pointerHandleButton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pointerHandleButton(i8* %0, %struct.wl_pointer* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_pointer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 1), align 8
  store i32* %15, i32** %13, align 8
  %16 = load i32*, i32** %13, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  br label %37

19:                                               ; preds = %6
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @BTN_LEFT, align 8
  %22 = sub nsw i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %14, align 4
  %24 = load i32*, i32** %13, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @WL_POINTER_BUTTON_STATE_PRESSED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* @GLFW_PRESS, align 4
  br label %33

31:                                               ; preds = %19
  %32 = load i32, i32* @GLFW_RELEASE, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %36 = call i32 @_glfwInputMouseClick(i32* %24, i32 %25, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %18
  ret void
}

declare dso_local i32 @_glfwInputMouseClick(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
