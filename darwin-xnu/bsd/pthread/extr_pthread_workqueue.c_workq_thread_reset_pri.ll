; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_thread_reset_pri.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_thread_reset_pri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue = type { i32 }
%struct.uthread = type { i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }

@WORKQ_THREAD_QOS_CLEANUP = common dso_local global i64 0, align 8
@POLICY_TIMESHARE = common dso_local global i32 0, align 4
@TR_FLAG_WL_PARAMS = common dso_local global i32 0, align 4
@UT_WORKQ_OUTSIDE_QOS = common dso_local global i32 0, align 4
@WORKQ_THREAD_QOS_MANAGER = common dso_local global i64 0, align 8
@_PTHREAD_PRIORITY_SCHED_PRI_FLAG = common dso_local global i32 0, align 4
@_PTHREAD_PRIORITY_SCHED_PRI_MASK = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@TRP_PRIORITY = common dso_local global i32 0, align 4
@TRP_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.workqueue*, %struct.uthread*, %struct.TYPE_10__*)* @workq_thread_reset_pri to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workq_thread_reset_pri(%struct.workqueue* %0, %struct.uthread* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca %struct.workqueue*, align 8
  %5 = alloca %struct.uthread*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca i32, align 4
  store %struct.workqueue* %0, %struct.workqueue** %4, align 8
  store %struct.uthread* %1, %struct.uthread** %5, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %6, align 8
  %14 = load %struct.uthread*, %struct.uthread** %5, align 8
  %15 = getelementptr inbounds %struct.uthread, %struct.uthread* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  br label %25

23:                                               ; preds = %3
  %24 = load i64, i64* @WORKQ_THREAD_QOS_CLEANUP, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i64 [ %22, %19 ], [ %24, %23 ]
  store i64 %26, i64* %8, align 8
  %27 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  store i32 31, i32* %10, align 4
  %28 = load i32, i32* @POLICY_TIMESHARE, align 4
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = icmp ne %struct.TYPE_10__* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TR_FLAG_WL_PARAMS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  call void @kqueue_threadreq_workloop_param(%struct.TYPE_11__* sret %12, %struct.TYPE_10__* %39)
  %40 = bitcast %struct.TYPE_11__* %9 to i8*
  %41 = bitcast %struct.TYPE_11__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false)
  br label %42

42:                                               ; preds = %38, %31, %25
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @WORKQ_POLICY_INIT(i64 %43)
  %45 = load %struct.uthread*, %struct.uthread** %5, align 8
  %46 = getelementptr inbounds %struct.uthread, %struct.uthread* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @UT_WORKQ_OUTSIDE_QOS, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.uthread*, %struct.uthread** %5, align 8
  %50 = getelementptr inbounds %struct.uthread, %struct.uthread* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.uthread*, %struct.uthread** %5, align 8
  %56 = getelementptr inbounds %struct.uthread, %struct.uthread* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store i64 %54, i64* %58, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.uthread*, %struct.uthread** %5, align 8
  %61 = getelementptr inbounds %struct.uthread, %struct.uthread* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store i64 %59, i64* %63, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @WORKQ_THREAD_QOS_MANAGER, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %42
  %68 = load %struct.workqueue*, %struct.workqueue** %4, align 8
  %69 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @_PTHREAD_PRIORITY_SCHED_PRI_FLAG, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %67
  %81 = load i32, i32* @_PTHREAD_PRIORITY_SCHED_PRI_MASK, align 4
  %82 = load i32, i32* %13, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @POLICY_TIMESHARE, align 4
  %88 = call i32 @thread_set_workq_pri(i32 %84, i64 %85, i32 %86, i32 %87)
  br label %123

89:                                               ; preds = %67
  %90 = load i32, i32* %13, align 4
  %91 = call i64 @_pthread_priority_thread_qos(i32 %90)
  store i64 %91, i64* %8, align 8
  br label %117

92:                                               ; preds = %42
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @TRP_PRIORITY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  store i64 %99, i64* %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* @UT_WORKQ_OUTSIDE_QOS, align 4
  %103 = load %struct.uthread*, %struct.uthread** %5, align 8
  %104 = getelementptr inbounds %struct.uthread, %struct.uthread* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %98, %92
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @TRP_POLICY, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %113, %107
  br label %117

117:                                              ; preds = %116, %89
  %118 = load i32, i32* %7, align 4
  %119 = load i64, i64* %8, align 8
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @thread_set_workq_pri(i32 %118, i64 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %117, %80
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @kqueue_threadreq_workloop_param(%struct.TYPE_11__* sret, %struct.TYPE_10__*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @WORKQ_POLICY_INIT(i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @thread_set_workq_pri(i32, i64, i32, i32) #2

declare dso_local i64 @_pthread_priority_thread_qos(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
