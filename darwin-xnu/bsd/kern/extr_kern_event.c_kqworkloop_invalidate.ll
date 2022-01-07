; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_invalidate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqworkloop_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kqworkloop = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@THREAD_QOS_UNSPECIFIED = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kqworkloop*)* @kqworkloop_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kqworkloop_invalidate(%struct.kqworkloop* %0) #0 {
  %2 = alloca %struct.kqworkloop*, align 8
  %3 = alloca i64, align 8
  store %struct.kqworkloop* %0, %struct.kqworkloop** %2, align 8
  %4 = load %struct.kqworkloop*, %struct.kqworkloop** %2, align 8
  %5 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.kqworkloop*, %struct.kqworkloop** %2, align 8
  %8 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @TAILQ_EMPTY(i32* %9)
  %11 = call i32 @assert(i32 %10)
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.kqworkloop*, %struct.kqworkloop** %2, align 8
  %16 = call i64 @kqworkloop_owner_override(%struct.kqworkloop* %15)
  %17 = load i64, i64* @THREAD_QOS_UNSPECIFIED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @thread_drop_ipc_override(i64 %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @thread_ends_owning_workloop(i64 %23)
  %25 = load i64, i64* @THREAD_NULL, align 8
  %26 = load %struct.kqworkloop*, %struct.kqworkloop** %2, align 8
  %27 = getelementptr inbounds %struct.kqworkloop, %struct.kqworkloop* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %22, %1
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i64 @kqworkloop_owner_override(%struct.kqworkloop*) #1

declare dso_local i32 @thread_drop_ipc_override(i64) #1

declare dso_local i32 @thread_ends_owning_workloop(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
