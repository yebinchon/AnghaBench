; ModuleID = '/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_getschedparam.c_pthread_getschedparam.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/pthread/extr_pthread_getschedparam.c_pthread_getschedparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@SCHED_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SCHED_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pthread_getschedparam(i64 %0, i32* %1, %struct.sched_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sched_param*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i64 %0, i64* %9, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sched_param* %2, %struct.sched_param** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @pthread_kill(i64 %11, i32 0)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 0, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %37

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* @SCHED_MAX, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = icmp ule i32* %18, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.sched_param*, %struct.sched_param** %7, align 8
  %24 = icmp eq %struct.sched_param* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %17
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %37

27:                                               ; preds = %22
  %28 = load i32, i32* @SCHED_OTHER, align 4
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_5__*
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sched_param*, %struct.sched_param** %7, align 8
  %36 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %27, %25, %15
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @pthread_kill(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
