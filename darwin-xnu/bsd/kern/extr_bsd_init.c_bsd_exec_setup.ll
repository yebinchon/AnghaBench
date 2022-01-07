; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_init.c_bsd_exec_setup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_init.c_bsd_exec_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BSD_SIMUL_EXECS = common dso_local global i32 0, align 4
@bsd_simul_execs = common dso_local global i32 0, align 4
@BSD_PAGEABLE_SIZE_PER_EXEC = common dso_local global i32 0, align 4
@bsd_pageable_map_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsd_exec_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %9 [
    i32 0, label %4
    i32 1, label %4
    i32 2, label %6
    i32 3, label %6
    i32 4, label %7
    i32 5, label %7
    i32 6, label %8
    i32 7, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, i32* @BSD_SIMUL_EXECS, align 4
  store i32 %5, i32* @bsd_simul_execs, align 4
  br label %10

6:                                                ; preds = %1, %1
  store i32 65, i32* @bsd_simul_execs, align 4
  br label %10

7:                                                ; preds = %1, %1
  store i32 129, i32* @bsd_simul_execs, align 4
  br label %10

8:                                                ; preds = %1, %1
  store i32 257, i32* @bsd_simul_execs, align 4
  br label %10

9:                                                ; preds = %1
  store i32 513, i32* @bsd_simul_execs, align 4
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %4
  %11 = load i32, i32* @bsd_simul_execs, align 4
  %12 = load i32, i32* @BSD_PAGEABLE_SIZE_PER_EXEC, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* @bsd_pageable_map_size, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
