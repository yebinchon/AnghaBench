; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_link_reserve.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_link_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }
%struct.waitq_link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LT_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitq_link_reserve(%struct.waitq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.waitq*, align 8
  %4 = alloca %struct.waitq_link*, align 8
  %5 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i64 (...) @get_preemption_level()
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = call i32 (...) @current_thread()
  %10 = call i64 @waitq_wait_possible(i32 %9)
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %8, %1
  %13 = phi i1 [ false, %1 ], [ %11, %8 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = call i32 (...) @wql_ensure_free_space()
  %17 = load %struct.waitq*, %struct.waitq** %3, align 8
  %18 = load i32, i32* @LT_RESERVED, align 4
  %19 = call %struct.waitq_link* @wql_alloc_link(i32 %18)
  store %struct.waitq_link* %19, %struct.waitq_link** %4, align 8
  %20 = load %struct.waitq_link*, %struct.waitq_link** %4, align 8
  %21 = icmp ne %struct.waitq_link* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %29

23:                                               ; preds = %12
  %24 = load %struct.waitq_link*, %struct.waitq_link** %4, align 8
  %25 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %22
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @get_preemption_level(...) #1

declare dso_local i64 @waitq_wait_possible(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @wql_ensure_free_space(...) #1

declare dso_local %struct.waitq_link* @wql_alloc_link(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
