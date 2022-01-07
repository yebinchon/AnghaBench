; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_policy_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_policy_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.task_pend_token = type { i32 }

@KDEBUG_TRACE = common dso_local global i32 0, align 4
@IMP_UPDATE = common dso_local global i32 0, align 4
@IMP_UPDATE_TASK_CREATE = common dso_local global i32 0, align 4
@TASK_POLICY_THREAD = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_policy_create(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.task_pend_token, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load i32, i32* @KDEBUG_TRACE, align 4
  %5 = load i32, i32* @IMP_UPDATE, align 4
  %6 = load i32, i32* @IMP_UPDATE_TASK_CREATE, align 4
  %7 = load i32, i32* @TASK_POLICY_THREAD, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @IMPORTANCE_CODE(i32 %5, i32 %8)
  %10 = load i32, i32* @DBG_FUNC_START, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = call i32 @thread_tid(%struct.TYPE_7__* %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = call i32 @theffective_0(%struct.TYPE_7__* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = call i32 @theffective_1(%struct.TYPE_7__* %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %4, i32 %11, i32 %13, i32 %15, i32 %17, i32 %20, i32 0)
  %22 = bitcast %struct.task_pend_token* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @thread_policy_update_internal_spinlocked(%struct.TYPE_7__* %23, i32 %24, %struct.task_pend_token* %3)
  %26 = load i32, i32* @KDEBUG_TRACE, align 4
  %27 = load i32, i32* @IMP_UPDATE, align 4
  %28 = load i32, i32* @IMP_UPDATE_TASK_CREATE, align 4
  %29 = load i32, i32* @TASK_POLICY_THREAD, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @IMPORTANCE_CODE(i32 %27, i32 %30)
  %32 = load i32, i32* @DBG_FUNC_END, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = call i32 @thread_tid(%struct.TYPE_7__* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = call i32 @theffective_0(%struct.TYPE_7__* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = call i32 @theffective_1(%struct.TYPE_7__* %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %26, i32 %33, i32 %35, i32 %37, i32 %39, i32 %42, i32 0)
  ret void
}

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IMPORTANCE_CODE(i32, i32) #1

declare dso_local i32 @thread_tid(%struct.TYPE_7__*) #1

declare dso_local i32 @theffective_0(%struct.TYPE_7__*) #1

declare dso_local i32 @theffective_1(%struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @thread_policy_update_internal_spinlocked(%struct.TYPE_7__*, i32, %struct.task_pend_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
