; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_reset_workq_qos.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_reset_workq_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_pend_token = type { i64 }

@THREAD_QOS_LAST = common dso_local global i64 0, align 8
@TASK_POLICY_ATTRIBUTE = common dso_local global i32 0, align 4
@TASK_POLICY_QOS_AND_RELPRIO = common dso_local global i32 0, align 4
@TASK_POLICY_QOS_WORKQ_OVERRIDE = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_reset_workq_qos(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.task_pend_token, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = bitcast %struct.task_pend_token* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 8, i1 false)
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @THREAD_QOS_LAST, align 8
  %10 = icmp slt i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = call i32 (...) @splsched()
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @thread_lock(i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %18 = load i32, i32* @TASK_POLICY_QOS_AND_RELPRIO, align 4
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @proc_set_thread_policy_spinlocked(i32 %16, i32 %17, i32 %18, i64 %19, i32 0, %struct.task_pend_token* %5)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %23 = load i32, i32* @TASK_POLICY_QOS_WORKQ_OVERRIDE, align 4
  %24 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %25 = call i32 @proc_set_thread_policy_spinlocked(i32 %21, i32 %22, i32 %23, i64 %24, i32 0, %struct.task_pend_token* %5)
  %26 = getelementptr inbounds %struct.task_pend_token, %struct.task_pend_token* %5, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @thread_unlock(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @splx(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @thread_policy_update_complete_unlocked(i32 %35, %struct.task_pend_token* %5)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @splsched(...) #2

declare dso_local i32 @thread_lock(i32) #2

declare dso_local i32 @proc_set_thread_policy_spinlocked(i32, i32, i32, i64, i32, %struct.task_pend_token*) #2

declare dso_local i32 @thread_unlock(i32) #2

declare dso_local i32 @splx(i32) #2

declare dso_local i32 @thread_policy_update_complete_unlocked(i32, %struct.task_pend_token*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
