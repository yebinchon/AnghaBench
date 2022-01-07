; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_markstayactive.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_markstayactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i64, i64, i64, i32 }
%struct.kqueue = type { i32 }
%struct.kqworkloop = type { i32 }

@KN_STAYACTIVE = common dso_local global i32 0, align 4
@KN_ATTACHING = common dso_local global i32 0, align 4
@KN_QUEUED = common dso_local global i32 0, align 4
@KN_SUPPRESSED = common dso_local global i32 0, align 4
@KQ_WORKQ = common dso_local global i32 0, align 4
@KQWQ_QOS_MANAGER = common dso_local global i64 0, align 8
@KQ_WORKLOOP = common dso_local global i32 0, align 4
@THREAD_QOS_LAST = common dso_local global i64 0, align 8
@KQWL_UTQ_UPDATE_STAYACTIVE_QOS = common dso_local global i32 0, align 4
@KQWL_BUCKET_STAYACTIVE = common dso_local global i64 0, align 8
@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @knote_markstayactive(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.kqueue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kqworkloop*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %6 = load %struct.knote*, %struct.knote** %2, align 8
  %7 = call %struct.kqueue* @knote_get_kq(%struct.knote* %6)
  store %struct.kqueue* %7, %struct.kqueue** %3, align 8
  %8 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %9 = call i32 @kqlock(%struct.kqueue* %8)
  %10 = load i32, i32* @KN_STAYACTIVE, align 4
  %11 = load %struct.knote*, %struct.knote** %2, align 8
  %12 = getelementptr inbounds %struct.knote, %struct.knote* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.knote*, %struct.knote** %2, align 8
  %16 = getelementptr inbounds %struct.knote, %struct.knote* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @KN_ATTACHING, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.knote*, %struct.knote** %2, align 8
  %22 = getelementptr inbounds %struct.knote, %struct.knote* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @KN_QUEUED, align 4
  %25 = load i32, i32* @KN_SUPPRESSED, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %32 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @KQ_WORKQ, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = load i64, i64* @KQWQ_QOS_MANAGER, align 8
  store i64 %38, i64* %4, align 8
  br label %75

39:                                               ; preds = %1
  %40 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %41 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @KQ_WORKLOOP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %39
  %47 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %48 = bitcast %struct.kqueue* %47 to %struct.kqworkloop*
  store %struct.kqworkloop* %48, %struct.kqworkloop** %5, align 8
  %49 = load %struct.knote*, %struct.knote** %2, align 8
  %50 = getelementptr inbounds %struct.knote, %struct.knote* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @_pthread_priority_thread_qos(i32 %51)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @THREAD_QOS_LAST, align 8
  %58 = icmp slt i64 %56, %57
  br label %59

59:                                               ; preds = %55, %46
  %60 = phi i1 [ false, %46 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %64 = call i32 @kq_req_lock(%struct.kqueue* %63)
  %65 = load %struct.kqworkloop*, %struct.kqworkloop** %5, align 8
  %66 = load i32, i32* @KQWL_UTQ_UPDATE_STAYACTIVE_QOS, align 4
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @kqworkloop_update_threads_qos(%struct.kqworkloop* %65, i32 %66, i64 %67)
  %69 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %70 = call i32 @kq_req_unlock(%struct.kqueue* %69)
  %71 = load i64, i64* @KQWL_BUCKET_STAYACTIVE, align 8
  store i64 %71, i64* %4, align 8
  br label %74

72:                                               ; preds = %39
  %73 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  store i64 %73, i64* %4, align 8
  br label %74

74:                                               ; preds = %72, %59
  br label %75

75:                                               ; preds = %74, %37
  %76 = load i64, i64* %4, align 8
  %77 = load %struct.knote*, %struct.knote** %2, align 8
  %78 = getelementptr inbounds %struct.knote, %struct.knote* %77, i32 0, i32 3
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load %struct.knote*, %struct.knote** %2, align 8
  %81 = getelementptr inbounds %struct.knote, %struct.knote* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %4, align 8
  %83 = load %struct.knote*, %struct.knote** %2, align 8
  %84 = getelementptr inbounds %struct.knote, %struct.knote* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.knote*, %struct.knote** %2, align 8
  %86 = call i32 @knote_activate(%struct.knote* %85)
  %87 = load %struct.kqueue*, %struct.kqueue** %3, align 8
  %88 = call i32 @kqunlock(%struct.kqueue* %87)
  ret void
}

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i32 @kqlock(%struct.kqueue*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @_pthread_priority_thread_qos(i32) #1

declare dso_local i32 @kq_req_lock(%struct.kqueue*) #1

declare dso_local i32 @kqworkloop_update_threads_qos(%struct.kqworkloop*, i32, i64) #1

declare dso_local i32 @kq_req_unlock(%struct.kqueue*) #1

declare dso_local i32 @knote_activate(%struct.knote*) #1

declare dso_local i32 @kqunlock(%struct.kqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
