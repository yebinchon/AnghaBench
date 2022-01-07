; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_syscall_subr.c_thread_depress_abort.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_syscall_subr.c_thread_depress_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@KERN_NOT_DEPRESSED = common dso_local global i32 0, align 4
@TH_SFLAG_DEPRESSED_MASK = common dso_local global i32 0, align 4
@TH_SFLAG_POLLDEPRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thread_depress_abort(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load i32, i32* @KERN_NOT_DEPRESSED, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 (...) @splsched()
  store i32 %6, i32* %4, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = call i32 @thread_lock(%struct.TYPE_6__* %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TH_SFLAG_DEPRESSED_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @TH_SFLAG_DEPRESSED_MASK, align 4
  %15 = icmp ne i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TH_SFLAG_POLLDEPRESS, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = call i32 @thread_depress_abort_locked(%struct.TYPE_6__* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %29 = call i32 @thread_unlock(%struct.TYPE_6__* %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @splx(i32 %30)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @thread_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @thread_depress_abort_locked(%struct.TYPE_6__*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
