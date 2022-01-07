; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_thread_reset_dispatch_override.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_thread_reset_dispatch_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uu_workq_policy = type { i32 }
%struct.workqueue = type { i32 }
%struct.uthread = type { %struct.uu_workq_policy }

@THREAD_TAG_WORKQUEUE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@TRACE_wq_override_reset = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @workq_thread_reset_dispatch_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workq_thread_reset_dispatch_override(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.uu_workq_policy, align 4
  %7 = alloca %struct.uu_workq_policy, align 4
  %8 = alloca %struct.workqueue*, align 8
  %9 = alloca %struct.uthread*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.workqueue* @proc_get_wqptr(i32 %10)
  store %struct.workqueue* %11, %struct.workqueue** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.uthread* @get_bsdthread_info(i32 %12)
  store %struct.uthread* %13, %struct.uthread** %9, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @thread_get_tag(i32 %14)
  %16 = load i32, i32* @THREAD_TAG_WORKQUEUE, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EPERM, align 4
  store i32 %20, i32* %3, align 4
  br label %47

21:                                               ; preds = %2
  %22 = load i32, i32* @TRACE_wq_override_reset, align 4
  %23 = load i32, i32* @DBG_FUNC_NONE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.workqueue*, %struct.workqueue** %8, align 8
  %26 = call i32 @WQ_TRACE_WQ(i32 %24, %struct.workqueue* %25, i32 0, i32 0, i32 0, i32 0)
  %27 = load %struct.workqueue*, %struct.workqueue** %8, align 8
  %28 = call i32 @workq_lock_spin(%struct.workqueue* %27)
  %29 = load %struct.uthread*, %struct.uthread** %9, align 8
  %30 = getelementptr inbounds %struct.uthread, %struct.uthread* %29, i32 0, i32 0
  %31 = bitcast %struct.uu_workq_policy* %7 to i8*
  %32 = bitcast %struct.uu_workq_policy* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = bitcast %struct.uu_workq_policy* %6 to i8*
  %34 = bitcast %struct.uu_workq_policy* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  %36 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %7, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.workqueue*, %struct.workqueue** %8, align 8
  %39 = load %struct.uthread*, %struct.uthread** %9, align 8
  %40 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @workq_thread_update_bucket(i32 %37, %struct.workqueue* %38, %struct.uthread* %39, i32 %41, i32 %43, i32 0)
  %45 = load %struct.workqueue*, %struct.workqueue** %8, align 8
  %46 = call i32 @workq_unlock(%struct.workqueue* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %21, %19
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.workqueue* @proc_get_wqptr(i32) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @thread_get_tag(i32) #1

declare dso_local i32 @WQ_TRACE_WQ(i32, %struct.workqueue*, i32, i32, i32, i32) #1

declare dso_local i32 @workq_lock_spin(%struct.workqueue*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @workq_thread_update_bucket(i32, %struct.workqueue*, %struct.uthread*, i32, i32, i32) #1

declare dso_local i32 @workq_unlock(%struct.workqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
