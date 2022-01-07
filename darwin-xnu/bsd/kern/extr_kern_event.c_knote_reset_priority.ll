; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_reset_priority.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_knote_reset_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i64, i64, i64 }
%struct.kqueue = type { i32 }
%struct.kqworkq = type { i32 }
%struct.kqworkloop = type { i32 }

@KN_QUEUED = common dso_local global i32 0, align 4
@KQ_WORKQ = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@KQWQ_QOS_MANAGER = common dso_local global i64 0, align 8
@_PTHREAD_PRIORITY_EVENT_MANAGER_FLAG = common dso_local global i32 0, align 4
@KQ_WORKLOOP = common dso_local global i32 0, align 4
@KN_MERGE_QOS = common dso_local global i32 0, align 4
@KN_SUPPRESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*, i32)* @knote_reset_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knote_reset_priority(%struct.knote* %0, i32 %1) #0 {
  %3 = alloca %struct.knote*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kqueue*, align 8
  %6 = alloca i64, align 8
  store %struct.knote* %0, %struct.knote** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.knote*, %struct.knote** %3, align 8
  %8 = call %struct.kqueue* @knote_get_kq(%struct.knote* %7)
  store %struct.kqueue* %8, %struct.kqueue** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @_pthread_priority_thread_qos(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.knote*, %struct.knote** %3, align 8
  %12 = getelementptr inbounds %struct.knote, %struct.knote* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @KN_QUEUED, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %20 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @KQ_WORKQ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i64, i64* @KQWQ_QOS_MANAGER, align 8
  store i64 %30, i64* %6, align 8
  %31 = load i32, i32* @_PTHREAD_PRIORITY_EVENT_MANAGER_FLAG, align 4
  store i32 %31, i32* %4, align 4
  br label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @_pthread_priority_normalize(i32 %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %29
  br label %56

36:                                               ; preds = %2
  %37 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %38 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @KQ_WORKLOOP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @_PTHREAD_PRIORITY_EVENT_MANAGER_FLAG, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @_pthread_priority_normalize(i32 %50)
  store i32 %51, i32* %4, align 4
  br label %55

52:                                               ; preds = %36
  %53 = call i32 (...) @_pthread_unspecified_priority()
  store i32 %53, i32* %4, align 4
  %54 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %52, %43
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.knote*, %struct.knote** %3, align 8
  %59 = getelementptr inbounds %struct.knote, %struct.knote* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.knote*, %struct.knote** %3, align 8
  %62 = getelementptr inbounds %struct.knote, %struct.knote* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = load %struct.knote*, %struct.knote** %3, align 8
  %64 = getelementptr inbounds %struct.knote, %struct.knote* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @KN_MERGE_QOS, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %56
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.knote*, %struct.knote** %3, align 8
  %72 = getelementptr inbounds %struct.knote, %struct.knote* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69, %56
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.knote*, %struct.knote** %3, align 8
  %78 = getelementptr inbounds %struct.knote, %struct.knote* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %69
  %80 = load %struct.knote*, %struct.knote** %3, align 8
  %81 = getelementptr inbounds %struct.knote, %struct.knote* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @KN_SUPPRESSED, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.knote*, %struct.knote** %3, align 8
  %89 = getelementptr inbounds %struct.knote, %struct.knote* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  br label %117

90:                                               ; preds = %79
  %91 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %92 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @KQ_WORKQ, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %99 = bitcast %struct.kqueue* %98 to %struct.kqworkq*
  %100 = load %struct.knote*, %struct.knote** %3, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @kqworkq_update_override(%struct.kqworkq* %99, %struct.knote* %100, i64 %101)
  br label %116

103:                                              ; preds = %90
  %104 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %105 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @KQ_WORKLOOP, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %112 = bitcast %struct.kqueue* %111 to %struct.kqworkloop*
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @kqworkloop_update_override(%struct.kqworkloop* %112, i64 %113)
  br label %115

115:                                              ; preds = %110, %103
  br label %116

116:                                              ; preds = %115, %97
  br label %117

117:                                              ; preds = %116, %86
  ret void
}

declare dso_local %struct.kqueue* @knote_get_kq(%struct.knote*) #1

declare dso_local i64 @_pthread_priority_thread_qos(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @_pthread_priority_normalize(i32) #1

declare dso_local i32 @_pthread_unspecified_priority(...) #1

declare dso_local i32 @kqworkq_update_override(%struct.kqworkq*, %struct.knote*, i64) #1

declare dso_local i32 @kqworkloop_update_override(%struct.kqworkloop*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
