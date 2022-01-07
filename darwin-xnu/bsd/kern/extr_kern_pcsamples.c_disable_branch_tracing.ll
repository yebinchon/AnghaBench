; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_pcsamples.c_disable_branch_tracing.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_pcsamples.c_disable_branch_tracing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@pc_sample_pid = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@pc_trace_frameworks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disable_branch_tracing() #0 {
  %1 = alloca %struct.proc*, align 8
  %2 = load i32, i32* @pc_sample_pid, align 4
  switch i32 %2, label %6 [
    i32 -1, label %3
    i32 0, label %5
  ]

3:                                                ; preds = %0
  %4 = load i32, i32* @FALSE, align 4
  store i32 %4, i32* @pc_trace_frameworks, align 4
  br label %17

5:                                                ; preds = %0
  br label %17

6:                                                ; preds = %0
  %7 = load i32, i32* @pc_sample_pid, align 4
  %8 = call %struct.proc* @proc_find(i32 %7)
  store %struct.proc* %8, %struct.proc** %1, align 8
  %9 = load %struct.proc*, %struct.proc** %1, align 8
  %10 = icmp ne %struct.proc* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.proc*, %struct.proc** %1, align 8
  %13 = getelementptr inbounds %struct.proc, %struct.proc* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.proc*, %struct.proc** %1, align 8
  %15 = call i32 @proc_rele(%struct.proc* %14)
  br label %16

16:                                               ; preds = %11, %6
  br label %17

17:                                               ; preds = %16, %5, %3
  %18 = call i32 (...) @clr_be_bit()
  ret i32 1
}

declare dso_local %struct.proc* @proc_find(i32) #1

declare dso_local i32 @proc_rele(%struct.proc*) #1

declare dso_local i32 @clr_be_bit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
