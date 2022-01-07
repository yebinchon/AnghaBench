; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_set_task_policy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_task_policy.c_proc_set_task_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_pend_token = type { i32 }

@KDEBUG_TRACE = common dso_local global i32 0, align 4
@TASK_POLICY_TASK = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_set_task_policy(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.task_pend_token, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = bitcast %struct.task_pend_token* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @task_lock(i32 %11)
  %13 = load i32, i32* @KDEBUG_TRACE, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @TASK_POLICY_TASK, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @IMPORTANCE_CODE(i32 %14, i32 %17)
  %19 = load i32, i32* @DBG_FUNC_START, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @task_pid(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @trequested_0(i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @trequested_1(i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %13, i32 %20, i32 %22, i32 %24, i32 %26, i32 %27, i32 0)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @proc_set_task_policy_locked(i32 %29, i32 %30, i32 %31, i32 %32, i32 0)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @task_policy_update_locked(i32 %34, %struct.task_pend_token* %9)
  %36 = load i32, i32* @KDEBUG_TRACE, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @TASK_POLICY_TASK, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @IMPORTANCE_CODE(i32 %37, i32 %40)
  %42 = load i32, i32* @DBG_FUNC_END, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @task_pid(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @trequested_0(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @trequested_1(i32 %48)
  %50 = call i32 @tpending(%struct.task_pend_token* %9)
  %51 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %36, i32 %43, i32 %45, i32 %47, i32 %49, i32 %50, i32 0)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @task_unlock(i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @task_policy_update_complete_unlocked(i32 %54, %struct.task_pend_token* %9)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @task_lock(i32) #2

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @IMPORTANCE_CODE(i32, i32) #2

declare dso_local i32 @task_pid(i32) #2

declare dso_local i32 @trequested_0(i32) #2

declare dso_local i32 @trequested_1(i32) #2

declare dso_local i32 @proc_set_task_policy_locked(i32, i32, i32, i32, i32) #2

declare dso_local i32 @task_policy_update_locked(i32, %struct.task_pend_token*) #2

declare dso_local i32 @tpending(%struct.task_pend_token*) #2

declare dso_local i32 @task_unlock(i32) #2

declare dso_local i32 @task_policy_update_complete_unlocked(i32, %struct.task_pend_token*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
