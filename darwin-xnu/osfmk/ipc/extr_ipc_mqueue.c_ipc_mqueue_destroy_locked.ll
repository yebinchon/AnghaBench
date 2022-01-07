; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_destroy_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_destroy_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64, i32, i64, i32, i32, i8* }

@FALSE = common dso_local global i8* null, align 8
@TURNSTILE_NULL = common dso_local global %struct.turnstile* null, align 8
@IPC_MQUEUE_FULL = common dso_local global i32 0, align 4
@THREAD_RESTART = common dso_local global i32 0, align 4
@WAITQ_ALL_PRIORITIES = common dso_local global i32 0, align 4
@IKM_NULL = common dso_local global %struct.TYPE_11__* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ipc_mqueue_destroy_locked(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.turnstile*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %8 = load i8*, i8** @FALSE, align 8
  store i8* %8, i8** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = call i32 @ip_from_mq(%struct.TYPE_10__* %9)
  %11 = call %struct.turnstile* @port_send_turnstile(i32 %10)
  store %struct.turnstile* %11, %struct.turnstile** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = call i32 @imq_is_set(%struct.TYPE_10__* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** @FALSE, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load %struct.turnstile*, %struct.turnstile** %6, align 8
  %22 = load %struct.turnstile*, %struct.turnstile** @TURNSTILE_NULL, align 8
  %23 = icmp ne %struct.turnstile* %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.turnstile*, %struct.turnstile** %6, align 8
  %26 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %25, i32 0, i32 0
  %27 = load i32, i32* @IPC_MQUEUE_FULL, align 4
  %28 = load i32, i32* @THREAD_RESTART, align 4
  %29 = load i32, i32* @WAITQ_ALL_PRIORITIES, align 4
  %30 = call i32 @waitq_wakeup64_all(i32* %26, i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %1
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 5
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %46, %31
  %35 = load i32*, i32** %3, align 8
  %36 = call %struct.TYPE_11__* @ipc_kmsg_dequeue(i32* %35)
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %4, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** @IKM_NULL, align 8
  %38 = icmp ne %struct.TYPE_11__* %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = call i8* @ipc_kmsg_delayed_destroy(%struct.TYPE_11__* %40)
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %44, %39
  br label %34

47:                                               ; preds = %34
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = call i32 @waitq_invalidate_locked(i32* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = call i32 @waitq_clear_prepost_locked(i32* %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i8*, i8** %5, align 8
  ret i8* %68
}

declare dso_local %struct.turnstile* @port_send_turnstile(i32) #1

declare dso_local i32 @ip_from_mq(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @imq_is_set(%struct.TYPE_10__*) #1

declare dso_local i32 @waitq_wakeup64_all(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @ipc_kmsg_dequeue(i32*) #1

declare dso_local i8* @ipc_kmsg_delayed_destroy(%struct.TYPE_11__*) #1

declare dso_local i32 @waitq_invalidate_locked(i32*) #1

declare dso_local i32 @waitq_clear_prepost_locked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
