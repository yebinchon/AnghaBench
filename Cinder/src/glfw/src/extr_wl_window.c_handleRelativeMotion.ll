; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_window.c_handleRelativeMotion.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_wl_window.c_handleRelativeMotion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zwp_relative_pointer_v1 = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }

@GLFW_CURSOR_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.zwp_relative_pointer_v1*, i32, i32, i32, i32, i32, i32)* @handleRelativeMotion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handleRelativeMotion(i8* %0, %struct.zwp_relative_pointer_v1* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca %struct.zwp_relative_pointer_v1*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %9, align 8
  store %struct.zwp_relative_pointer_v1* %1, %struct.zwp_relative_pointer_v1** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %17, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GLFW_CURSOR_DISABLED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  br label %41

26:                                               ; preds = %8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %15, align 4
  %32 = call i64 @wl_fixed_to_double(i32 %31)
  %33 = add nsw i64 %30, %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call i64 @wl_fixed_to_double(i32 %37)
  %39 = add nsw i64 %36, %38
  %40 = call i32 @_glfwInputCursorPos(%struct.TYPE_3__* %27, i64 %33, i64 %39)
  br label %41

41:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @_glfwInputCursorPos(%struct.TYPE_3__*, i64, i64) #1

declare dso_local i64 @wl_fixed_to_double(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
