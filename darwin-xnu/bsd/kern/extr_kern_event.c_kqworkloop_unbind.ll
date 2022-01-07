; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_unbind.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkloop = type { %struct.kqrequest, %struct.kqueue }
%struct.kqrequest = type { i64, i32 }
%struct.kqueue = type { i32 }

@KQWL_UTQ_PARKING = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@KQ_PROCESSING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.kqworkloop*)* @kqworkloop_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kqworkloop_unbind(i32 %0, %struct.kqworkloop* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kqworkloop*, align 8
  %5 = alloca %struct.kqueue*, align 8
  %6 = alloca %struct.kqrequest*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.kqworkloop* %1, %struct.kqworkloop** %4, align 8
  %11 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %12 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %11, i32 0, i32 1
  store %struct.kqueue* %12, %struct.kqueue** %5, align 8
  %13 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %14 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %13, i32 0, i32 0
  store %struct.kqrequest* %14, %struct.kqrequest** %6, align 8
  %15 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %16 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* @KQWL_UTQ_PARKING, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 (...) @current_thread()
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %26 = call i32 @kqlock(%struct.kqworkloop* %25)
  %27 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %28 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @KQ_PROCESSING, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.kqrequest*, %struct.kqrequest** %6, align 8
  %36 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %35, i32 0, i32 1
  %37 = call i32 @TAILQ_EMPTY(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* @KQ_PROCESSING, align 4
  %41 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %42 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %46 = call i64 @kqworkloop_acknowledge_events(%struct.kqworkloop* %45)
  store i64 %46, i64* %10, align 8
  %47 = load i32, i32* @KQ_PROCESSING, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %50 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %39, %2
  %54 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %55 = call i32 @kq_req_lock(%struct.kqworkloop* %54)
  %56 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @kqworkloop_unbind_locked(%struct.kqworkloop* %56, i64 %57)
  store i64 %58, i64* %9, align 8
  %59 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @kqworkloop_update_threads_qos(%struct.kqworkloop* %59, i32 %60, i64 %61)
  %63 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %64 = call i32 @kq_req_unlock(%struct.kqworkloop* %63)
  %65 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %66 = call i32 @kqunlock(%struct.kqworkloop* %65)
  %67 = load i64, i64* %9, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @thread_drop_ipc_override(i64 %70)
  br label %72

72:                                               ; preds = %69, %53
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.kqworkloop*, %struct.kqworkloop** %4, align 8
  %75 = call i32 @kqueue_release_last(i32 %73, %struct.kqworkloop* %74)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @kqlock(%struct.kqworkloop*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i64 @kqworkloop_acknowledge_events(%struct.kqworkloop*) #1

declare dso_local i32 @kq_req_lock(%struct.kqworkloop*) #1

declare dso_local i64 @kqworkloop_unbind_locked(%struct.kqworkloop*, i64) #1

declare dso_local i32 @kqworkloop_update_threads_qos(%struct.kqworkloop*, i32, i64) #1

declare dso_local i32 @kq_req_unlock(%struct.kqworkloop*) #1

declare dso_local i32 @kqunlock(%struct.kqworkloop*) #1

declare dso_local i32 @thread_drop_ipc_override(i64) #1

declare dso_local i32 @kqueue_release_last(i32, %struct.kqworkloop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
