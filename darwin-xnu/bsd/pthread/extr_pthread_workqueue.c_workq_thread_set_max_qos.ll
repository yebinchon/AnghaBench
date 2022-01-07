; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_thread_set_max_qos.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_thread_set_max_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.kqrequest = type { i64, i32 }
%struct.uu_workq_policy = type { i64 }
%struct.uthread = type { %struct.uu_workq_policy }
%struct.workqueue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workq_thread_set_max_qos(%struct.proc* %0, %struct.kqrequest* %1) #0 {
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.kqrequest*, align 8
  %5 = alloca %struct.uu_workq_policy, align 8
  %6 = alloca %struct.uu_workq_policy, align 8
  %7 = alloca %struct.uthread*, align 8
  %8 = alloca %struct.workqueue*, align 8
  %9 = alloca i64, align 8
  store %struct.proc* %0, %struct.proc** %3, align 8
  store %struct.kqrequest* %1, %struct.kqrequest** %4, align 8
  %10 = load %struct.kqrequest*, %struct.kqrequest** %4, align 8
  %11 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.uthread* @get_bsdthread_info(i32 %12)
  store %struct.uthread* %13, %struct.uthread** %7, align 8
  %14 = load %struct.proc*, %struct.proc** %3, align 8
  %15 = call %struct.workqueue* @proc_get_wqptr_fast(%struct.proc* %14)
  store %struct.workqueue* %15, %struct.workqueue** %8, align 8
  %16 = load %struct.kqrequest*, %struct.kqrequest** %4, align 8
  %17 = getelementptr inbounds %struct.kqrequest, %struct.kqrequest* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.uthread*, %struct.uthread** %7, align 8
  %20 = getelementptr inbounds %struct.uthread, %struct.uthread* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %47

26:                                               ; preds = %2
  %27 = load %struct.workqueue*, %struct.workqueue** %8, align 8
  %28 = call i32 @workq_lock_spin(%struct.workqueue* %27)
  %29 = load %struct.uthread*, %struct.uthread** %7, align 8
  %30 = getelementptr inbounds %struct.uthread, %struct.uthread* %29, i32 0, i32 0
  %31 = bitcast %struct.uu_workq_policy* %6 to i8*
  %32 = bitcast %struct.uu_workq_policy* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = bitcast %struct.uu_workq_policy* %5 to i8*
  %34 = bitcast %struct.uu_workq_policy* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %6, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load %struct.proc*, %struct.proc** %3, align 8
  %38 = load %struct.workqueue*, %struct.workqueue** %8, align 8
  %39 = load %struct.uthread*, %struct.uthread** %7, align 8
  %40 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %5, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @workq_thread_update_bucket(%struct.proc* %37, %struct.workqueue* %38, %struct.uthread* %39, i64 %41, i64 %43, i32 0)
  %45 = load %struct.workqueue*, %struct.workqueue** %8, align 8
  %46 = call i32 @workq_unlock(%struct.workqueue* %45)
  br label %47

47:                                               ; preds = %26, %25
  ret void
}

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local %struct.workqueue* @proc_get_wqptr_fast(%struct.proc*) #1

declare dso_local i32 @workq_lock_spin(%struct.workqueue*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @workq_thread_update_bucket(%struct.proc*, %struct.workqueue*, %struct.uthread*, i64, i64, i32) #1

declare dso_local i32 @workq_unlock(%struct.workqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
