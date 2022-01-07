; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_donefileread.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_donefileread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.fileproc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @donefileread(%struct.proc* %0, %struct.fileproc* %1, i32 %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.fileproc*, align 8
  %6 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.fileproc* %1, %struct.fileproc** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.proc*, %struct.proc** %4, align 8
  %8 = call i32 @proc_fdlock_spin(%struct.proc* %7)
  %9 = load %struct.proc*, %struct.proc** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %12 = call i32 @fp_drop(%struct.proc* %9, i32 %10, %struct.fileproc* %11, i32 1)
  %13 = load %struct.proc*, %struct.proc** %4, align 8
  %14 = call i32 @proc_fdunlock(%struct.proc* %13)
  ret void
}

declare dso_local i32 @proc_fdlock_spin(%struct.proc*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
