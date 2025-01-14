; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_winmm_joystick.c__glfwPlatformGetJoystickName.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_winmm_joystick.c__glfwPlatformGetJoystickName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i32 }

@JOYERR_NOERROR = common dso_local global i64 0, align 8
@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_glfwPlatformGetJoystickName(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @_glfw_joyGetDevCaps(i32 %5, %struct.TYPE_6__* %4, i32 4)
  %7 = load i64, i64* @JOYERR_NOERROR, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %32

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0), align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @free(i8* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @_glfwCreateUTF8FromWideString(i32 %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0), align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i8* %20, i8** %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0), align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %2, align 8
  br label %32

32:                                               ; preds = %10, %9
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local i64 @_glfw_joyGetDevCaps(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @_glfwCreateUTF8FromWideString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
