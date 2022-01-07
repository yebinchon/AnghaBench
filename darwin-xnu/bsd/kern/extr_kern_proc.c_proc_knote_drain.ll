; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_knote_drain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_knote_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.knote = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PROC_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_knote_drain(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.knote*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  store %struct.knote* null, %struct.knote** %3, align 8
  %4 = call i32 (...) @proc_klist_lock()
  br label %5

5:                                                ; preds = %10, %1
  %6 = load %struct.proc*, %struct.proc** %2, align 8
  %7 = getelementptr inbounds %struct.proc, %struct.proc* %6, i32 0, i32 0
  %8 = call %struct.knote* @SLIST_FIRST(i32* %7)
  store %struct.knote* %8, %struct.knote** %3, align 8
  %9 = icmp ne %struct.knote* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load i32, i32* @PROC_NULL, align 4
  %12 = load %struct.knote*, %struct.knote** %3, align 8
  %13 = getelementptr inbounds %struct.knote, %struct.knote* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.proc*, %struct.proc** %2, align 8
  %16 = getelementptr inbounds %struct.proc, %struct.proc* %15, i32 0, i32 0
  %17 = load %struct.knote*, %struct.knote** %3, align 8
  %18 = call i32 @KNOTE_DETACH(i32* %16, %struct.knote* %17)
  br label %5

19:                                               ; preds = %5
  %20 = call i32 (...) @proc_klist_unlock()
  ret void
}

declare dso_local i32 @proc_klist_lock(...) #1

declare dso_local %struct.knote* @SLIST_FIRST(i32*) #1

declare dso_local i32 @KNOTE_DETACH(i32*, %struct.knote*) #1

declare dso_local i32 @proc_klist_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
