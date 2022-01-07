; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/pthreads/extr_vcos_pthreads.c_vcos_platform_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/pthreads/extr_vcos_pthreads.c_vcos_platform_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@VCOS_SUCCESS = common dso_local global i64 0, align 8
@VCOS_INIT_NAMED_SEM = common dso_local global i32 0, align 4
@current_thread_key_once = common dso_local global i32 0, align 4
@current_thread_key_init = common dso_local global i32 0, align 4
@vcos_thread_main = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@VCOS_INIT_MAIN_SEM = common dso_local global i32 0, align 4
@_vcos_thread_current_key = common dso_local global i32 0, align 4
@VCOS_EINVAL = common dso_local global i64 0, align 8
@VCOS_INIT_MSGQ = common dso_local global i32 0, align 4
@VCOS_INIT_PRINTF_LOCK = common dso_local global i32 0, align 4
@printf_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vcos_platform_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = call i64 (...) @_vcos_named_semaphore_init()
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @VCOS_SUCCESS, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @vcos_verify(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %62

12:                                               ; preds = %0
  %13 = load i32, i32* @VCOS_INIT_NAMED_SEM, align 4
  %14 = load i32, i32* %2, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* @current_thread_key_init, align 4
  %17 = call i64 @vcos_once(i32* @current_thread_key_once, i32 %16)
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  %19 = load i64, i64* @VCOS_SUCCESS, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @vcos_verify(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %12
  br label %62

25:                                               ; preds = %12
  %26 = call i64 @vcos_semaphore_create(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vcos_thread_main, i32 0, i32 1), i32* null, i32 0)
  store i64 %26, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @VCOS_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @vcos_verify(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %62

34:                                               ; preds = %25
  %35 = load i32, i32* @VCOS_INIT_MAIN_SEM, align 4
  %36 = load i32, i32* %2, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %2, align 4
  %38 = call i32 (...) @pthread_self()
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vcos_thread_main, i32 0, i32 0), align 4
  %39 = load i32, i32* @_vcos_thread_current_key, align 4
  %40 = call i32 @pthread_setspecific(i32 %39, %struct.TYPE_3__* @vcos_thread_main)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @vcos_verify(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %34
  %47 = load i64, i64* @VCOS_EINVAL, align 8
  store i64 %47, i64* %1, align 8
  br label %62

48:                                               ; preds = %34
  %49 = call i64 (...) @vcos_msgq_init()
  store i64 %49, i64* %1, align 8
  %50 = load i64, i64* %1, align 8
  %51 = load i64, i64* @VCOS_SUCCESS, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @vcos_verify(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %62

57:                                               ; preds = %48
  %58 = load i32, i32* @VCOS_INIT_MSGQ, align 4
  %59 = load i32, i32* %2, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %2, align 4
  %61 = call i32 (...) @vcos_logging_init()
  br label %62

62:                                               ; preds = %57, %56, %46, %33, %24, %11
  %63 = load i64, i64* %1, align 8
  %64 = load i64, i64* @VCOS_SUCCESS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @vcos_term(i32 %67)
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i64, i64* %1, align 8
  ret i64 %70
}

declare dso_local i64 @_vcos_named_semaphore_init(...) #1

declare dso_local i32 @vcos_verify(i32) #1

declare dso_local i64 @vcos_once(i32*, i32) #1

declare dso_local i64 @vcos_semaphore_create(i32*, i32*, i32) #1

declare dso_local i32 @pthread_self(...) #1

declare dso_local i32 @pthread_setspecific(i32, %struct.TYPE_3__*) #1

declare dso_local i64 @vcos_msgq_init(...) #1

declare dso_local i32 @vcos_logging_init(...) #1

declare dso_local i32 @vcos_term(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
