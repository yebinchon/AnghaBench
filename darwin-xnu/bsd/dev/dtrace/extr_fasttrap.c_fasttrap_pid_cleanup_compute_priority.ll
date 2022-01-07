; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_pid_cleanup_compute_priority.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_pid_cleanup_compute_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@fasttrap_total = common dso_local global i32 0, align 4
@fasttrap_max = common dso_local global i32 0, align 4
@fasttrap_retired = common dso_local global i32 0, align 4
@__const.fasttrap_pid_cleanup_compute_priority.precedence = private unnamed_addr constant %struct.TYPE_2__ { i32 12 }, align 4
@fasttrap_cleanup_thread = common dso_local global i32 0, align 4
@THREAD_PRECEDENCE_POLICY = common dso_local global i32 0, align 4
@THREAD_PRECEDENCE_POLICY_COUNT = common dso_local global i32 0, align 4
@__const.fasttrap_pid_cleanup_compute_priority.precedence.1 = private unnamed_addr constant %struct.TYPE_2__ { i32 -39 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fasttrap_pid_cleanup_compute_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fasttrap_pid_cleanup_compute_priority() #0 {
  %1 = alloca %struct.TYPE_2__, align 4
  %2 = alloca %struct.TYPE_2__, align 4
  %3 = load i32, i32* @fasttrap_total, align 4
  %4 = load i32, i32* @fasttrap_max, align 4
  %5 = sdiv i32 %4, 100
  %6 = mul nsw i32 %5, 90
  %7 = icmp sgt i32 %3, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @fasttrap_retired, align 4
  %10 = load i32, i32* @fasttrap_max, align 4
  %11 = sdiv i32 %10, 2
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %8, %0
  %14 = bitcast %struct.TYPE_2__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.TYPE_2__* @__const.fasttrap_pid_cleanup_compute_priority.precedence to i8*), i64 4, i1 false)
  %15 = load i32, i32* @fasttrap_cleanup_thread, align 4
  %16 = load i32, i32* @THREAD_PRECEDENCE_POLICY, align 4
  %17 = ptrtoint %struct.TYPE_2__* %1 to i32
  %18 = load i32, i32* @THREAD_PRECEDENCE_POLICY_COUNT, align 4
  %19 = call i32 @thread_policy_set(i32 %15, i32 %16, i32 %17, i32 %18)
  br label %27

20:                                               ; preds = %8
  %21 = bitcast %struct.TYPE_2__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.TYPE_2__* @__const.fasttrap_pid_cleanup_compute_priority.precedence.1 to i8*), i64 4, i1 false)
  %22 = load i32, i32* @fasttrap_cleanup_thread, align 4
  %23 = load i32, i32* @THREAD_PRECEDENCE_POLICY, align 4
  %24 = ptrtoint %struct.TYPE_2__* %2 to i32
  %25 = load i32, i32* @THREAD_PRECEDENCE_POLICY_COUNT, align 4
  %26 = call i32 @thread_policy_set(i32 %22, i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @thread_policy_set(i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
