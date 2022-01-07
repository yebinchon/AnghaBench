; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_exception_enqueue.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_thread.c_thread_exception_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_exception_elt = type { i32, i32, i64 }

@EXC_RESOURCE = common dso_local global i64 0, align 8
@EXC_GUARD = common dso_local global i64 0, align 8
@thread_exception_lock = common dso_local global i32 0, align 4
@thread_exception_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_exception_enqueue(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.thread_exception_elt*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* @EXC_RESOURCE, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* @EXC_GUARD, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %12, %13
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i1 [ true, %3 ], [ %14, %11 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = call %struct.thread_exception_elt* @kalloc(i32 16)
  store %struct.thread_exception_elt* %19, %struct.thread_exception_elt** %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.thread_exception_elt*, %struct.thread_exception_elt** %7, align 8
  %22 = getelementptr inbounds %struct.thread_exception_elt, %struct.thread_exception_elt* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.thread_exception_elt*, %struct.thread_exception_elt** %7, align 8
  %25 = getelementptr inbounds %struct.thread_exception_elt, %struct.thread_exception_elt* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.thread_exception_elt*, %struct.thread_exception_elt** %7, align 8
  %28 = getelementptr inbounds %struct.thread_exception_elt, %struct.thread_exception_elt* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = call i32 @simple_lock(i32* @thread_exception_lock)
  %30 = load %struct.thread_exception_elt*, %struct.thread_exception_elt** %7, align 8
  %31 = ptrtoint %struct.thread_exception_elt* %30 to i32
  %32 = call i32 @enqueue_tail(i32* @thread_exception_queue, i32 %31)
  %33 = call i32 @simple_unlock(i32* @thread_exception_lock)
  %34 = call i32 @thread_wakeup(i32 ptrtoint (i32* @thread_exception_queue to i32))
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.thread_exception_elt* @kalloc(i32) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @enqueue_tail(i32*, i32) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @thread_wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
