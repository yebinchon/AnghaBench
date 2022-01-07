; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_tty_pgrp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_tty_pgrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i32, i32 }
%struct.tty = type { %struct.pgrp* }

@PGRP_NULL = common dso_local global %struct.pgrp* null, align 8
@PGRP_FLAG_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"tty_pgrp: ref being povided for dead pgrp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgrp* @tty_pgrp(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.pgrp*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  store %struct.pgrp* %4, %struct.pgrp** %3, align 8
  %5 = call i32 (...) @proc_list_lock()
  %6 = load %struct.tty*, %struct.tty** %2, align 8
  %7 = getelementptr inbounds %struct.tty, %struct.tty* %6, i32 0, i32 0
  %8 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  store %struct.pgrp* %8, %struct.pgrp** %3, align 8
  %9 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %10 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  %11 = icmp ne %struct.pgrp* %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %14 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PGRP_FLAG_DEAD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %12
  %22 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %23 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %21, %1
  %27 = call i32 (...) @proc_list_unlock()
  %28 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  ret %struct.pgrp* %28
}

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @proc_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
