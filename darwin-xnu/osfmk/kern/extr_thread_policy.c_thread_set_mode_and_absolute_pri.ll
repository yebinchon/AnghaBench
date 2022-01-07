; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_set_mode_and_absolute_pri.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_set_mode_and_absolute_pri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.task_pend_token = type { i32 }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_TERMINATED = common dso_local global i32 0, align 4
@KERN_POLICY_STATIC = common dso_local global i32 0, align 4
@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_set_mode_and_absolute_pri(%struct.TYPE_11__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_pend_token, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %10, i32* %7, align 4
  %11 = bitcast %struct.task_pend_token* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @convert_policy_to_sched_mode(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = call i32 @thread_mtx_lock(%struct.TYPE_11__* %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @KERN_TERMINATED, align 4
  store i32 %21, i32* %7, align 4
  br label %43

22:                                               ; preds = %3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = call i64 @thread_is_static_param(%struct.TYPE_11__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @KERN_POLICY_STATIC, align 4
  store i32 %27, i32* %7, align 4
  br label %43

28:                                               ; preds = %22
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = call i32 @thread_remove_qos_policy_locked(%struct.TYPE_11__* %36, %struct.task_pend_token* %8)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @thread_set_mode_and_absolute_pri_internal(%struct.TYPE_11__* %39, i32 %40, i32 %41, %struct.task_pend_token* %8)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %26, %20
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = call i32 @thread_mtx_unlock(%struct.TYPE_11__* %44)
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = call i32 @thread_policy_update_complete_unlocked(%struct.TYPE_11__* %46, %struct.task_pend_token* %8)
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @convert_policy_to_sched_mode(i32) #2

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_11__*) #2

declare dso_local i64 @thread_is_static_param(%struct.TYPE_11__*) #2

declare dso_local i32 @thread_remove_qos_policy_locked(%struct.TYPE_11__*, %struct.task_pend_token*) #2

declare dso_local i32 @thread_set_mode_and_absolute_pri_internal(%struct.TYPE_11__*, i32, i32, %struct.task_pend_token*) #2

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_11__*) #2

declare dso_local i32 @thread_policy_update_complete_unlocked(%struct.TYPE_11__*, %struct.task_pend_token*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
