; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_procdetach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_procdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.knote = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.proc* }

@PROC_NULL = common dso_local global %struct.proc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knote*)* @filt_procdetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filt_procdetach(%struct.knote* %0) #0 {
  %2 = alloca %struct.knote*, align 8
  %3 = alloca %struct.proc*, align 8
  store %struct.knote* %0, %struct.knote** %2, align 8
  %4 = call i32 (...) @proc_klist_lock()
  %5 = load %struct.knote*, %struct.knote** %2, align 8
  %6 = getelementptr inbounds %struct.knote, %struct.knote* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.proc*, %struct.proc** %7, align 8
  store %struct.proc* %8, %struct.proc** %3, align 8
  %9 = load %struct.proc*, %struct.proc** %3, align 8
  %10 = load %struct.proc*, %struct.proc** @PROC_NULL, align 8
  %11 = icmp ne %struct.proc* %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.proc*, %struct.proc** @PROC_NULL, align 8
  %14 = load %struct.knote*, %struct.knote** %2, align 8
  %15 = getelementptr inbounds %struct.knote, %struct.knote* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.proc* %13, %struct.proc** %16, align 8
  %17 = load %struct.proc*, %struct.proc** %3, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 0
  %19 = load %struct.knote*, %struct.knote** %2, align 8
  %20 = call i32 @KNOTE_DETACH(i32* %18, %struct.knote* %19)
  br label %21

21:                                               ; preds = %12, %1
  %22 = call i32 (...) @proc_klist_unlock()
  ret void
}

declare dso_local i32 @proc_klist_lock(...) #1

declare dso_local i32 @KNOTE_DETACH(i32*, %struct.knote*) #1

declare dso_local i32 @proc_klist_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
