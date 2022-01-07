; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_init.c__glfwPlatformTerminate.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_win32_init.c__glfwPlatformTerminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SPI_SETFOREGROUNDLOCKTIMEOUT = common dso_local global i32 0, align 4
@SPIF_SENDCHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformTerminate() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 8
  %5 = call i32 @DestroyWindow(i64 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = call i32 (...) @_glfwUnregisterWindowClassWin32()
  %8 = load i32, i32* @SPI_SETFOREGROUNDLOCKTIMEOUT, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 4
  %10 = call i32 @UIntToPtr(i32 %9)
  %11 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %12 = call i32 @SystemParametersInfoW(i32 %8, i32 0, i32 %10, i32 %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %14 = call i32 @free(i32 %13)
  %15 = call i32 (...) @_glfwTerminateWGL()
  %16 = call i32 (...) @_glfwTerminateEGL()
  %17 = call i32 (...) @_glfwTerminateJoysticksWin32()
  %18 = call i32 (...) @_glfwTerminateThreadLocalStorageWin32()
  %19 = call i32 (...) @freeLibraries()
  ret void
}

declare dso_local i32 @DestroyWindow(i64) #1

declare dso_local i32 @_glfwUnregisterWindowClassWin32(...) #1

declare dso_local i32 @SystemParametersInfoW(i32, i32, i32, i32) #1

declare dso_local i32 @UIntToPtr(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @_glfwTerminateWGL(...) #1

declare dso_local i32 @_glfwTerminateEGL(...) #1

declare dso_local i32 @_glfwTerminateJoysticksWin32(...) #1

declare dso_local i32 @_glfwTerminateThreadLocalStorageWin32(...) #1

declare dso_local i32 @freeLibraries(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
