; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_proc_thread_qos_deallocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread_policy.c_proc_thread_qos_deallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__, %struct.thread_qos_override* }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.thread_qos_override = type { %struct.thread_qos_override* }

@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@thread_qos_override_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_thread_qos_deallocate(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.thread_qos_override*, align 8
  %4 = alloca %struct.thread_qos_override*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = call i32 @thread_mtx_lock(%struct.TYPE_7__* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load %struct.thread_qos_override*, %struct.thread_qos_override** %36, align 8
  store %struct.thread_qos_override* %37, %struct.thread_qos_override** %3, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  store %struct.thread_qos_override* null, %struct.thread_qos_override** %39, align 8
  %40 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i64 %40, i64* %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = call i32 @thread_mtx_unlock(%struct.TYPE_7__* %44)
  br label %46

46:                                               ; preds = %49, %1
  %47 = load %struct.thread_qos_override*, %struct.thread_qos_override** %3, align 8
  %48 = icmp ne %struct.thread_qos_override* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.thread_qos_override*, %struct.thread_qos_override** %3, align 8
  %51 = getelementptr inbounds %struct.thread_qos_override, %struct.thread_qos_override* %50, i32 0, i32 0
  %52 = load %struct.thread_qos_override*, %struct.thread_qos_override** %51, align 8
  store %struct.thread_qos_override* %52, %struct.thread_qos_override** %4, align 8
  %53 = load i32, i32* @thread_qos_override_zone, align 4
  %54 = load %struct.thread_qos_override*, %struct.thread_qos_override** %3, align 8
  %55 = call i32 @zfree(i32 %53, %struct.thread_qos_override* %54)
  %56 = load %struct.thread_qos_override*, %struct.thread_qos_override** %4, align 8
  store %struct.thread_qos_override* %56, %struct.thread_qos_override** %3, align 8
  br label %46

57:                                               ; preds = %46
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @zfree(i32, %struct.thread_qos_override*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
