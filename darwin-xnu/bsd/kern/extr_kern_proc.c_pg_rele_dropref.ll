; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_pg_rele_dropref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_pg_rele_dropref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i32, i32 }

@PGRP_FLAG_TERMINATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pg_rele_dropref(%struct.pgrp* %0) #0 {
  %2 = alloca %struct.pgrp*, align 8
  store %struct.pgrp* %0, %struct.pgrp** %2, align 8
  %3 = call i32 (...) @proc_list_lock()
  %4 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %5 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %10 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = call i32 (...) @proc_list_unlock()
  %18 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %19 = call i32 @pgdelete_dropref(%struct.pgrp* %18)
  br label %26

20:                                               ; preds = %8, %1
  %21 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  %22 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = call i32 (...) @proc_list_unlock()
  br label %26

26:                                               ; preds = %20, %16
  ret void
}

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @pgdelete_dropref(%struct.pgrp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
