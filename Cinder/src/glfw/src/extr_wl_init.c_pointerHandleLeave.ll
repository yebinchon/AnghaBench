; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_init.c_pointerHandleLeave.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_init.c_pointerHandleLeave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.wl_pointer = type { i32 }
%struct.wl_surface = type { i32 }

@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GLFW_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_pointer*, i32, %struct.wl_surface*)* @pointerHandleLeave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pointerHandleLeave(i8* %0, %struct.wl_pointer* %1, i32 %2, %struct.wl_surface* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wl_pointer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wl_surface*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.wl_surface* %3, %struct.wl_surface** %8, align 8
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  store i32* %10, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %19

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* @GLFW_FALSE, align 4
  %18 = call i32 @_glfwInputCursorEnter(i32* %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @_glfwInputCursorEnter(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
