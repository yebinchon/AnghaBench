; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_set_qlimit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_set_qlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@MACH_PORT_QLIMIT_MAX = common dso_local global i64 0, align 8
@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@IPC_MQUEUE_FULL = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i32 0, align 4
@WAITQ_PROMOTE_PRIORITY = common dso_local global i32 0, align 4
@KERN_NOT_WAITING = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_mqueue_set_qlimit(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.turnstile*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @MACH_PORT_QLIMIT_MAX, align 8
  %10 = icmp sle i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = call i32 @imq_lock(%struct.TYPE_6__* %13)
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = call i32 @ip_from_mq(%struct.TYPE_6__* %21)
  %23 = call %struct.turnstile* @port_send_turnstile(i32 %22)
  store %struct.turnstile* %23, %struct.turnstile** %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %55, %20
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load %struct.turnstile*, %struct.turnstile** %7, align 8
  %35 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %36 = icmp eq %struct.turnstile* %34, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = load %struct.turnstile*, %struct.turnstile** %7, align 8
  %39 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %38, i32 0, i32 0
  %40 = load i32, i32* @IPC_MQUEUE_FULL, align 4
  %41 = load i32, i32* @THREAD_AWAKENED, align 4
  %42 = load i32, i32* @WAITQ_PROMOTE_PRIORITY, align 4
  %43 = call i64 @waitq_wakeup64_one(i32* %39, i32 %40, i32 %41, i32 %42)
  %44 = load i64, i64* @KERN_NOT_WAITING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %37, %33
  %47 = load i32, i32* @FALSE, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %58

50:                                               ; preds = %37
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %5, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %5, align 8
  br label %29

58:                                               ; preds = %46, %29
  br label %59

59:                                               ; preds = %58, %2
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = call i32 @imq_unlock(%struct.TYPE_6__* %63)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @imq_lock(%struct.TYPE_6__*) #1

declare dso_local %struct.turnstile* @port_send_turnstile(i32) #1

declare dso_local i32 @ip_from_mq(%struct.TYPE_6__*) #1

declare dso_local i64 @waitq_wakeup64_one(i32*, i32, i32, i32) #1

declare dso_local i32 @imq_unlock(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
