; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_ipc_override.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_thread_ipc_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.task_pend_token = type { i64 }

@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@THREAD_QOS_LAST = common dso_local global i64 0, align 8
@TASK_POLICY_ATTRIBUTE = common dso_local global i32 0, align 4
@TASK_POLICY_QOS_IPC_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64, i32)* @thread_ipc_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_ipc_override(%struct.TYPE_9__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_pend_token, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = bitcast %struct.task_pend_token* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 8, i1 false)
  %12 = call i32 (...) @splsched()
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = call i32 @thread_lock(%struct.TYPE_9__* %13)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %21 = icmp sgt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @THREAD_QOS_LAST, align 8
  %26 = icmp slt i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %3
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  br label %49

43:                                               ; preds = %31
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %46 = icmp sgt i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  br label %49

49:                                               ; preds = %43, %37
  br label %62

50:                                               ; preds = %3
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %59 = icmp sgt i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  br label %62

62:                                               ; preds = %50, %49
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %68, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %8, align 4
  br label %77

72:                                               ; preds = %62
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp sgt i64 %73, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %72, %67
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %83 = load i32, i32* @TASK_POLICY_QOS_IPC_OVERRIDE, align 4
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @proc_set_thread_policy_spinlocked(%struct.TYPE_9__* %81, i32 %82, i32 %83, i64 %84, i32 0, %struct.task_pend_token* %7)
  %86 = getelementptr inbounds %struct.task_pend_token, %struct.task_pend_token* %7, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  br label %91

91:                                               ; preds = %80, %77
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = call i32 @thread_unlock(%struct.TYPE_9__* %92)
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @splx(i32 %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %97 = call i32 @thread_policy_update_complete_unlocked(%struct.TYPE_9__* %96, %struct.task_pend_token* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @splsched(...) #2

declare dso_local i32 @thread_lock(%struct.TYPE_9__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @proc_set_thread_policy_spinlocked(%struct.TYPE_9__*, i32, i32, i64, i32, %struct.task_pend_token*) #2

declare dso_local i32 @thread_unlock(%struct.TYPE_9__*) #2

declare dso_local i32 @splx(i32) #2

declare dso_local i32 @thread_policy_update_complete_unlocked(%struct.TYPE_9__*, %struct.task_pend_token*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
