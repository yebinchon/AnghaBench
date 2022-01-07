; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_window.c__glfwPlatformWaitEventsTimeout.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_mir_window.c__glfwPlatformWaitEventsTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.timespec = type { i64, i64 }

@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformWaitEventsTimeout(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.timespec, align 8
  store double %0, double* %2, align 8
  %4 = call i32 @pthread_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0))
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 4
  %6 = call i64 @emptyEventQueue(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load i32, i32* @CLOCK_REALTIME, align 4
  %10 = call i32 @clock_gettime(i32 %9, %struct.timespec* %3)
  %11 = load double, double* %2, align 8
  %12 = fptosi double %11 to i64
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, %12
  store i64 %15, i64* %13, align 8
  %16 = load double, double* %2, align 8
  %17 = load double, double* %2, align 8
  %18 = fptosi double %17 to i64
  %19 = sitofp i64 %18 to double
  %20 = fsub double %16, %19
  %21 = fmul double %20, 1.000000e+09
  %22 = fptosi double %21 to i64
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %22
  store i64 %25, i64* %23, align 8
  %26 = call i32 @pthread_cond_timedwait(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), %struct.timespec* %3)
  br label %27

27:                                               ; preds = %8, %1
  %28 = call i32 @pthread_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0))
  %29 = call i32 (...) @_glfwPlatformPollEvents()
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @emptyEventQueue(i32) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @_glfwPlatformPollEvents(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
