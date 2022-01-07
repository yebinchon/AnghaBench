; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_thread_add_dispatch_override.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_thread_add_dispatch_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uu_workq_policy = type { i64 }
%struct.workqueue = type { i32 }
%struct.uthread = type { %struct.uu_workq_policy }

@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@THREAD_TAG_WORKQUEUE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@TRACE_wq_override_dispatch = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i64)* @workq_thread_add_dispatch_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workq_thread_add_dispatch_override(i32 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.uu_workq_policy, align 8
  %11 = alloca %struct.uu_workq_policy, align 8
  %12 = alloca %struct.workqueue*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.uthread*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.workqueue* @proc_get_wqptr(i32 %18)
  store %struct.workqueue* %19, %struct.workqueue** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @_pthread_priority_thread_qos(i32 %20)
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %5, align 4
  br label %128

27:                                               ; preds = %4
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @port_name_to_thread(i64 %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  %31 = load i64, i64* @THREAD_NULL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @ESRCH, align 4
  store i32 %34, i32* %5, align 4
  br label %128

35:                                               ; preds = %27
  %36 = load i64, i64* %14, align 8
  %37 = call %struct.uthread* @get_bsdthread_info(i64 %36)
  store %struct.uthread* %37, %struct.uthread** %15, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @thread_get_tag(i64 %38)
  %40 = load i32, i32* @THREAD_TAG_WORKQUEUE, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @thread_deallocate(i64 %44)
  %46 = load i32, i32* @EPERM, align 4
  store i32 %46, i32* %5, align 4
  br label %128

47:                                               ; preds = %35
  %48 = load i32, i32* @TRACE_wq_override_dispatch, align 4
  %49 = load i32, i32* @DBG_FUNC_NONE, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.workqueue*, %struct.workqueue** %12, align 8
  %52 = load i64, i64* %14, align 8
  %53 = call i32 @thread_tid(i64 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @WQ_TRACE_WQ(i32 %50, %struct.workqueue* %51, i32 %53, i32 1, i32 %54, i32 0)
  %56 = load i64, i64* %14, align 8
  %57 = call i32 @thread_mtx_lock(i64 %56)
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %47
  %61 = call i32 (...) @disable_preemption()
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @copyin_word(i64 %62, i64* %16, i32 8)
  store i32 %63, i32* %17, align 4
  %64 = call i32 (...) @enable_preemption()
  %65 = load i32, i32* %17, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i64, i64* %16, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i64 @ulock_owner_value_to_port_name(i32 %69)
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %123

74:                                               ; preds = %67, %60
  br label %75

75:                                               ; preds = %74, %47
  %76 = load %struct.workqueue*, %struct.workqueue** %12, align 8
  %77 = call i32 @workq_lock_spin(%struct.workqueue* %76)
  %78 = load %struct.uthread*, %struct.uthread** %15, align 8
  %79 = getelementptr inbounds %struct.uthread, %struct.uthread* %78, i32 0, i32 0
  %80 = bitcast %struct.uu_workq_policy* %10 to i8*
  %81 = bitcast %struct.uu_workq_policy* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 8, i1 false)
  %82 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %10, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %13, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %120

87:                                               ; preds = %75
  %88 = load i64, i64* %14, align 8
  %89 = call i64 (...) @current_thread()
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = bitcast %struct.uu_workq_policy* %11 to i8*
  %93 = bitcast %struct.uu_workq_policy* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 8, i1 false)
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %11, i32 0, i32 0
  store i64 %94, i64* %95, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.workqueue*, %struct.workqueue** %12, align 8
  %98 = load %struct.uthread*, %struct.uthread** %15, align 8
  %99 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %10, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %11, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @workq_thread_update_bucket(i32 %96, %struct.workqueue* %97, %struct.uthread* %98, i64 %100, i64 %102, i32 0)
  br label %119

104:                                              ; preds = %87
  %105 = load i64, i64* %13, align 8
  %106 = load %struct.uthread*, %struct.uthread** %15, align 8
  %107 = getelementptr inbounds %struct.uthread, %struct.uthread* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %107, i32 0, i32 0
  store i64 %105, i64* %108, align 8
  %109 = load i64, i64* %13, align 8
  %110 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %10, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i64 @workq_pri_override(i64 %111)
  %113 = icmp sgt i64 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i32 @thread_set_workq_override(i64 %115, i64 %116)
  br label %118

118:                                              ; preds = %114, %104
  br label %119

119:                                              ; preds = %118, %91
  br label %120

120:                                              ; preds = %119, %86
  %121 = load %struct.workqueue*, %struct.workqueue** %12, align 8
  %122 = call i32 @workq_unlock(%struct.workqueue* %121)
  br label %123

123:                                              ; preds = %120, %73
  %124 = load i64, i64* %14, align 8
  %125 = call i32 @thread_mtx_unlock(i64 %124)
  %126 = load i64, i64* %14, align 8
  %127 = call i32 @thread_deallocate(i64 %126)
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %123, %43, %33, %25
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.workqueue* @proc_get_wqptr(i32) #1

declare dso_local i64 @_pthread_priority_thread_qos(i32) #1

declare dso_local i64 @port_name_to_thread(i64) #1

declare dso_local %struct.uthread* @get_bsdthread_info(i64) #1

declare dso_local i32 @thread_get_tag(i64) #1

declare dso_local i32 @thread_deallocate(i64) #1

declare dso_local i32 @WQ_TRACE_WQ(i32, %struct.workqueue*, i32, i32, i32, i32) #1

declare dso_local i32 @thread_tid(i64) #1

declare dso_local i32 @thread_mtx_lock(i64) #1

declare dso_local i32 @disable_preemption(...) #1

declare dso_local i32 @copyin_word(i64, i64*, i32) #1

declare dso_local i32 @enable_preemption(...) #1

declare dso_local i64 @ulock_owner_value_to_port_name(i32) #1

declare dso_local i32 @workq_lock_spin(%struct.workqueue*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @workq_thread_update_bucket(i32, %struct.workqueue*, %struct.uthread*, i64, i64, i32) #1

declare dso_local i64 @workq_pri_override(i64) #1

declare dso_local i32 @thread_set_workq_override(i64, i64) #1

declare dso_local i32 @workq_unlock(%struct.workqueue*) #1

declare dso_local i32 @thread_mtx_unlock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
