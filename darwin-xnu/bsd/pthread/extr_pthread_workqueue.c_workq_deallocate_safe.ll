; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_deallocate_safe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_workqueue.c_workq_deallocate_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workqueue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workq_deallocate_safe(%struct.workqueue* %0) #0 {
  %2 = alloca %struct.workqueue*, align 8
  store %struct.workqueue* %0, %struct.workqueue** %2, align 8
  %3 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %4 = getelementptr inbounds %struct.workqueue, %struct.workqueue* %3, i32 0, i32 0
  %5 = call i64 @os_ref_release_relaxed(i32* %4)
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i64 @__improbable(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.workqueue*, %struct.workqueue** %2, align 8
  %12 = call i32 @workq_deallocate_enqueue(%struct.workqueue* %11)
  br label %13

13:                                               ; preds = %10, %1
  ret void
}

declare dso_local i64 @__improbable(i32) #1

declare dso_local i64 @os_ref_release_relaxed(i32*) #1

declare dso_local i32 @workq_deallocate_enqueue(%struct.workqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
