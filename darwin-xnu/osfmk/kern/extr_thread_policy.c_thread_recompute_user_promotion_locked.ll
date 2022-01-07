; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_recompute_user_promotion_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_recompute_user_promotion_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.task_pend_token = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@MAXPRI_USER = common dso_local global i32 0, align 4
@KDEBUG_TRACE = common dso_local global i32 0, align 4
@TURNSTILE_PRIORITY_OPERATIONS = common dso_local global i32 0, align 4
@THREAD_USER_PROMOTION_CHANGE = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@MAXPRI_THROTTLE = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i32 0, align 4
@TASK_POLICY_ATTRIBUTE = common dso_local global i32 0, align 4
@TASK_POLICY_QOS_PROMOTE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_recompute_user_promotion_locked(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_pend_token, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %4, align 4
  %10 = bitcast %struct.task_pend_token* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = call i32 @thread_get_inheritor_turnstile_priority(%struct.TYPE_10__* %11)
  %13 = load i32, i32* @MAXPRI_USER, align 4
  %14 = call i32 @MIN(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %77

25:                                               ; preds = %1
  %26 = load i32, i32* @KDEBUG_TRACE, align 4
  %27 = load i32, i32* @TURNSTILE_PRIORITY_OPERATIONS, align 4
  %28 = load i32, i32* @THREAD_USER_PROMOTION_CHANGE, align 4
  %29 = call i32 @TURNSTILE_CODE(i32 %27, i32 %28)
  %30 = load i32, i32* @DBG_FUNC_NONE, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = call i32 @thread_tid(%struct.TYPE_10__* %32)
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @KERNEL_DEBUG_CONSTANT_IST(i32 %26, i32 %31, i32 %33, i32 %34, i32 %37, i32 0, i32 0)
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.task_pend_token, %struct.task_pend_token* %5, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MAXPRI_THROTTLE, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @THREAD_QOS_UNSPECIFIED, align 4
  store i32 %48, i32* %8, align 4
  br label %52

49:                                               ; preds = %39
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @thread_user_promotion_qos_for_pri(i32 %50)
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %47
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %55 = load i32, i32* @TASK_POLICY_QOS_PROMOTE, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @proc_set_thread_policy_spinlocked(%struct.TYPE_10__* %53, i32 %54, i32 %55, i32 %56, i32 0, %struct.task_pend_token* %5)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = call i64 @thread_get_waiting_turnstile(%struct.TYPE_10__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %61, %52
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = call i32 @thread_unlock(%struct.TYPE_10__* %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = call i32 @thread_policy_update_complete_unlocked(%struct.TYPE_10__* %72, %struct.task_pend_token* %5)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = call i32 @thread_lock(%struct.TYPE_10__* %74)
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %69, %23
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @thread_get_inheritor_turnstile_priority(%struct.TYPE_10__*) #2

declare dso_local i32 @KERNEL_DEBUG_CONSTANT_IST(i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @TURNSTILE_CODE(i32, i32) #2

declare dso_local i32 @thread_tid(%struct.TYPE_10__*) #2

declare dso_local i32 @thread_user_promotion_qos_for_pri(i32) #2

declare dso_local i32 @proc_set_thread_policy_spinlocked(%struct.TYPE_10__*, i32, i32, i32, i32, %struct.task_pend_token*) #2

declare dso_local i64 @thread_get_waiting_turnstile(%struct.TYPE_10__*) #2

declare dso_local i32 @thread_unlock(%struct.TYPE_10__*) #2

declare dso_local i32 @thread_policy_update_complete_unlocked(%struct.TYPE_10__*, %struct.task_pend_token*) #2

declare dso_local i32 @thread_lock(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
