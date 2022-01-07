; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_pgfind.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_pgfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i32, i32 }

@PGRP_FLAG_TERMINATE = common dso_local global i32 0, align 4
@PGRP_NULL = common dso_local global %struct.pgrp* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgrp* @pgfind(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pgrp*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @proc_list_lock()
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.pgrp* @pgfind_internal(i32 %5)
  store %struct.pgrp* %6, %struct.pgrp** %3, align 8
  %7 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %8 = icmp eq %struct.pgrp* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %11 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %9, %1
  %17 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  store %struct.pgrp* %17, %struct.pgrp** %3, align 8
  br label %23

18:                                               ; preds = %9
  %19 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %20 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %18, %16
  %24 = call i32 (...) @proc_list_unlock()
  %25 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  ret %struct.pgrp* %25
}

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local %struct.pgrp* @pgfind_internal(i32) #1

declare dso_local i32 @proc_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
