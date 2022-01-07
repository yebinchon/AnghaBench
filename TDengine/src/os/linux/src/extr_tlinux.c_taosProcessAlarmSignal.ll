; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tlinux.c_taosProcessAlarmSignal.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tlinux.c_taosProcessAlarmSignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigevent = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.itimerspec = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }

@SIGALRM = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIGEV_THREAD_ID = common dso_local global i32 0, align 4
@__NR_gettid = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to create timer\00", align 1
@MSECONDS_PER_TICK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to init timer\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to wait signal: number %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @taosProcessAlarmSignal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca void (i32)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigevent, align 4
  %7 = alloca %struct.itimerspec, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = call i32 @sigemptyset(i32* %3)
  %10 = load i32, i32* @SIGALRM, align 4
  %11 = call i32 @sigaddset(i32* %3, i32 %10)
  %12 = load i32, i32* @SIG_BLOCK, align 4
  %13 = call i32 @sigprocmask(i32 %12, i32* %3, i32* null)
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to void (i32)*
  store void (i32)* %15, void (i32)** %4, align 8
  %16 = load i32, i32* @SIGEV_THREAD_ID, align 4
  %17 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %6, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @__NR_gettid, align 4
  %19 = call i32 @syscall(i32 %18)
  %20 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %6, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @SIGALRM, align 4
  %23 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @CLOCK_REALTIME, align 4
  %25 = call i32 @timer_create(i32 %24, %struct.sigevent* %6, i32* %5)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 (i8*, ...) @tmrError(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %1
  %30 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @MSECONDS_PER_TICK, align 4
  %33 = mul nsw i32 1000000, %32
  %34 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @MSECONDS_PER_TICK, align 4
  %39 = mul nsw i32 1000000, %38
  %40 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %7, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @timer_settime(i32 %42, i32 0, %struct.itimerspec* %7, i32* null)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %29
  %46 = call i32 (i8*, ...) @tmrError(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  ret i8* null

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47, %51, %54
  %49 = call i64 @sigwait(i32* %3, i32* %8)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = call i32 (i8*, ...) @tmrError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %48

54:                                               ; preds = %48
  %55 = load void (i32)*, void (i32)** %4, align 8
  call void %55(i32 0)
  br label %48
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @syscall(i32) #1

declare dso_local i32 @timer_create(i32, %struct.sigevent*, i32*) #1

declare dso_local i32 @tmrError(i8*, ...) #1

declare dso_local i64 @timer_settime(i32, i32, %struct.itimerspec*, i32*) #1

declare dso_local i64 @sigwait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
