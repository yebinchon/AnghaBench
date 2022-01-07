; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_win32_init.c__glfwPlatformInit.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_win32_init.c__glfwPlatformInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SPI_GETFOREGROUNDLOCKTIMEOUT = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SPI_SETFOREGROUNDLOCKTIMEOUT = common dso_local global i32 0, align 4
@SPIF_SENDCHANGE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwPlatformInit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SPI_GETFOREGROUNDLOCKTIMEOUT, align 4
  %3 = call i32 @SystemParametersInfoW(i32 %2, i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), i32 0)
  %4 = load i32, i32* @SPI_SETFOREGROUNDLOCKTIMEOUT, align 4
  %5 = call i32* @UIntToPtr(i32 0)
  %6 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %7 = call i32 @SystemParametersInfoW(i32 %4, i32 0, i32* %5, i32 %6)
  %8 = call i32 (...) @initLibraries()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @GL_FALSE, align 4
  store i32 %11, i32* %1, align 4
  br label %30

12:                                               ; preds = %0
  %13 = call i32 (...) @createKeyTables()
  br i1 true, label %14, label %16

14:                                               ; preds = %12
  %15 = call i32 (...) @_glfw_SetProcessDPIAware()
  br label %16

16:                                               ; preds = %14, %12
  %17 = call i32 (...) @_glfwRegisterWindowClass()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @GL_FALSE, align 4
  store i32 %20, i32* %1, align 4
  br label %30

21:                                               ; preds = %16
  %22 = call i32 (...) @_glfwInitContextAPI()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @GL_FALSE, align 4
  store i32 %25, i32* %1, align 4
  br label %30

26:                                               ; preds = %21
  %27 = call i32 (...) @_glfwInitTimer()
  %28 = call i32 (...) @_glfwInitJoysticks()
  %29 = load i32, i32* @GL_TRUE, align 4
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %26, %24, %19, %10
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @SystemParametersInfoW(i32, i32, i32*, i32) #1

declare dso_local i32* @UIntToPtr(i32) #1

declare dso_local i32 @initLibraries(...) #1

declare dso_local i32 @createKeyTables(...) #1

declare dso_local i32 @_glfw_SetProcessDPIAware(...) #1

declare dso_local i32 @_glfwRegisterWindowClass(...) #1

declare dso_local i32 @_glfwInitContextAPI(...) #1

declare dso_local i32 @_glfwInitTimer(...) #1

declare dso_local i32 @_glfwInitJoysticks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
