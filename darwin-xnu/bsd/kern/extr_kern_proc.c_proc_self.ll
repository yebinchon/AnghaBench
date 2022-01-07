; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_self.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@PROC_NULL = common dso_local global %struct.proc* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc* @proc_self() #0 {
  %1 = alloca %struct.proc*, align 8
  %2 = call %struct.proc* (...) @current_proc()
  store %struct.proc* %2, %struct.proc** %1, align 8
  %3 = call i32 (...) @proc_list_lock()
  %4 = load %struct.proc*, %struct.proc** %1, align 8
  %5 = load %struct.proc*, %struct.proc** %1, align 8
  %6 = call %struct.proc* @proc_ref_locked(%struct.proc* %5)
  %7 = icmp ne %struct.proc* %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load %struct.proc*, %struct.proc** @PROC_NULL, align 8
  store %struct.proc* %9, %struct.proc** %1, align 8
  br label %10

10:                                               ; preds = %8, %0
  %11 = call i32 (...) @proc_list_unlock()
  %12 = load %struct.proc*, %struct.proc** %1, align 8
  ret %struct.proc* %12
}

declare dso_local %struct.proc* @current_proc(...) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local %struct.proc* @proc_ref_locked(%struct.proc*) #1

declare dso_local i32 @proc_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
