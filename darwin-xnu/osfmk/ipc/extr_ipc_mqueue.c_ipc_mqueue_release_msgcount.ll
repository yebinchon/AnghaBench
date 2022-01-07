; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_release_msgcount.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_release_msgcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }

@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@IPC_MQUEUE_FULL = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i32 0, align 4
@WAITQ_PROMOTE_PRIORITY = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipc_mqueue_release_msgcount(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.turnstile*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = call i32 @ip_from_mq(%struct.TYPE_7__* %6)
  %8 = call %struct.turnstile* @port_send_turnstile(i32 %7)
  store %struct.turnstile* %8, %struct.turnstile** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = call i32 @imq_held(%struct.TYPE_7__* %10)
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = call i64 @ipc_kmsg_queue_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %2
  %23 = phi i1 [ true, %2 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = call i32 @imq_full(%struct.TYPE_7__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %22
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %33
  %39 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %40 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %41 = icmp ne %struct.turnstile* %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %38
  %43 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %44 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %43, i32 0, i32 0
  %45 = load i32, i32* @IPC_MQUEUE_FULL, align 4
  %46 = load i32, i32* @THREAD_AWAKENED, align 4
  %47 = load i32, i32* @WAITQ_PROMOTE_PRIORITY, align 4
  %48 = call i64 @waitq_wakeup64_one(i32* %44, i32 %45, i32 %46, i32 %47)
  %49 = load i64, i64* @KERN_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i64, i64* @FALSE, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  br label %60

55:                                               ; preds = %42
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %55, %51
  br label %61

61:                                               ; preds = %60, %38, %33, %22
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = call i64 @ipc_kmsg_queue_empty(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = call i32 @waitq_clear_prepost_locked(i32* %68)
  br label %70

70:                                               ; preds = %66, %61
  ret void
}

declare dso_local %struct.turnstile* @port_send_turnstile(i32) #1

declare dso_local i32 @ip_from_mq(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @imq_held(%struct.TYPE_7__*) #1

declare dso_local i64 @ipc_kmsg_queue_empty(i32*) #1

declare dso_local i32 @imq_full(%struct.TYPE_7__*) #1

declare dso_local i64 @waitq_wakeup64_one(i32*, i32, i32, i32) #1

declare dso_local i32 @waitq_clear_prepost_locked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
