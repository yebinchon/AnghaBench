; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_so_tc_from_dscp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kpi_socket.c_so_tc_from_dscp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SO_TC_VO = common dso_local global i32 0, align 4
@SO_TC_VI = common dso_local global i32 0, align 4
@SO_TC_BK_SYS = common dso_local global i32 0, align 4
@SO_TC_BE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @so_tc_from_dscp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @so_tc_from_dscp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 48
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sle i32 %7, 63
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i32, i32* @SO_TC_VO, align 4
  store i32 %10, i32* %3, align 4
  br label %31

11:                                               ; preds = %6, %1
  %12 = load i32, i32* %2, align 4
  %13 = icmp sge i32 %12, 32
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = icmp sle i32 %15, 47
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @SO_TC_VI, align 4
  store i32 %18, i32* %3, align 4
  br label %30

19:                                               ; preds = %14, %11
  %20 = load i32, i32* %2, align 4
  %21 = icmp sge i32 %20, 8
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = icmp sle i32 %23, 23
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @SO_TC_BK_SYS, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %22, %19
  %28 = load i32, i32* @SO_TC_BE, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %17
  br label %31

31:                                               ; preds = %30, %9
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
