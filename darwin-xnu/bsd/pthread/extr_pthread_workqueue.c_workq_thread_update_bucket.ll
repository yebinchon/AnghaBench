; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_thread_update_bucket.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_thread_update_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue = type { i64 }
%struct.uthread = type { i32, %struct.uu_workq_policy }
%struct.uu_workq_policy = type { i64 }

@WORKQ_THREADREQ_CAN_CREATE_THREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.workqueue*, %struct.uthread*, i64, i64, i32)* @workq_thread_update_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workq_thread_update_bucket(i32 %0, %struct.workqueue* %1, %struct.uthread* %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.uu_workq_policy, align 8
  %8 = alloca %struct.uu_workq_policy, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.workqueue*, align 8
  %11 = alloca %struct.uthread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %7, i32 0, i32 0
  store i64 %3, i64* %16, align 8
  %17 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %8, i32 0, i32 0
  store i64 %4, i64* %17, align 8
  store i32 %0, i32* %9, align 4
  store %struct.workqueue* %1, %struct.workqueue** %10, align 8
  store %struct.uthread* %2, %struct.uthread** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %7, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %13, align 8
  %20 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %8, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @workq_pri_bucket(i64 %21)
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* %14, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %6
  %27 = load %struct.workqueue*, %struct.workqueue** %10, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %14, align 8
  %30 = call i32 @_wq_thactive_move(%struct.workqueue* %27, i64 %28, i64 %29)
  br label %31

31:                                               ; preds = %26, %6
  %32 = load i64, i64* %14, align 8
  %33 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %8, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.uthread*, %struct.uthread** %11, align 8
  %35 = getelementptr inbounds %struct.uthread, %struct.uthread* %34, i32 0, i32 1
  %36 = bitcast %struct.uu_workq_policy* %35 to i8*
  %37 = bitcast %struct.uu_workq_policy* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = getelementptr inbounds %struct.uu_workq_policy, %struct.uu_workq_policy* %7, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @workq_pri_override(i64 %39)
  %41 = load i64, i64* %14, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load %struct.uthread*, %struct.uthread** %11, align 8
  %45 = getelementptr inbounds %struct.uthread, %struct.uthread* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @thread_set_workq_override(i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %43, %31
  %50 = load %struct.workqueue*, %struct.workqueue** %10, align 8
  %51 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %49
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %14, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58, %54
  %62 = load i32, i32* @WORKQ_THREADREQ_CAN_CREATE_THREADS, align 4
  store i32 %62, i32* %15, align 4
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %14, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.workqueue*, %struct.workqueue** %10, align 8
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @workq_schedule_creator(i32 %68, %struct.workqueue* %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %58, %49
  ret void
}

declare dso_local i64 @workq_pri_bucket(i64) #1

declare dso_local i32 @_wq_thactive_move(%struct.workqueue*, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @workq_pri_override(i64) #1

declare dso_local i32 @thread_set_workq_override(i32, i64) #1

declare dso_local i32 @workq_schedule_creator(i32, %struct.workqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
