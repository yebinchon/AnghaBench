; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_task_set_main_thread_qos.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_task_set_main_thread_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.task_pend_token = type { i32 }

@KDEBUG_TRACE = common dso_local global i32 0, align 4
@IMP_MAIN_THREAD_QOS = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@TASK_POLICY_ATTRIBUTE = common dso_local global i32 0, align 4
@TASK_POLICY_QOS = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @task_set_main_thread_qos(i64 %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.task_pend_token, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %7 = bitcast %struct.task_pend_token* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = call i32 @thread_mtx_lock(%struct.TYPE_12__* %15)
  %17 = load i32, i32* @KDEBUG_TRACE, align 4
  %18 = load i32, i32* @IMP_MAIN_THREAD_QOS, align 4
  %19 = call i32 @IMPORTANCE_CODE(i32 %18, i32 0)
  %20 = load i32, i32* @DBG_FUNC_START, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = call i32 @thread_tid(%struct.TYPE_12__* %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = call i32 @threquested_0(%struct.TYPE_12__* %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = call i32 @threquested_1(%struct.TYPE_12__* %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %17, i32 %21, i32 %23, i32 %25, i32 %27, i32 %31, i32 0)
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @task_compute_main_thread_qos(i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %37 = load i32, i32* @TASK_POLICY_QOS, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @proc_set_thread_policy_locked(%struct.TYPE_12__* %35, i32 %36, i32 %37, i32 %38, i32 0, %struct.task_pend_token* %5)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = call i32 @thread_mtx_unlock(%struct.TYPE_12__* %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = call i32 @thread_policy_update_complete_unlocked(%struct.TYPE_12__* %42, %struct.task_pend_token* %5)
  %44 = load i32, i32* @KDEBUG_TRACE, align 4
  %45 = load i32, i32* @IMP_MAIN_THREAD_QOS, align 4
  %46 = call i32 @IMPORTANCE_CODE(i32 %45, i32 0)
  %47 = load i32, i32* @DBG_FUNC_END, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = call i32 @thread_tid(%struct.TYPE_12__* %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = call i32 @threquested_0(%struct.TYPE_12__* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = call i32 @threquested_1(%struct.TYPE_12__* %53)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %44, i32 %48, i32 %50, i32 %52, i32 %54, i32 %55, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_12__*) #2

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @IMPORTANCE_CODE(i32, i32) #2

declare dso_local i32 @thread_tid(%struct.TYPE_12__*) #2

declare dso_local i32 @threquested_0(%struct.TYPE_12__*) #2

declare dso_local i32 @threquested_1(%struct.TYPE_12__*) #2

declare dso_local i32 @task_compute_main_thread_qos(i64) #2

declare dso_local i32 @proc_set_thread_policy_locked(%struct.TYPE_12__*, i32, i32, i32, i32, %struct.task_pend_token*) #2

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_12__*) #2

declare dso_local i32 @thread_policy_update_complete_unlocked(%struct.TYPE_12__*, %struct.task_pend_token*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
