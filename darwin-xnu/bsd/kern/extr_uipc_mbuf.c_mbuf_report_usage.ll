; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mbuf_report_usage.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mbuf_report_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mb_peak_newreport = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mbuf_report_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbuf_report_usage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @mb_peak_newreport, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @TRUE, align 4
  store i32 %7, i32* %2, align 4
  br label %35

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @m_total(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @m_peak(i32 %11)
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @m_total(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @m_maxlimit(i32 %17)
  %19 = ashr i32 %18, 4
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @m_total(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @m_peak(i32 %24)
  %26 = sub nsw i32 %23, %25
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @m_peak(i32 %27)
  %29 = ashr i32 %28, 5
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %21, %14, %8
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %31, %6
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @m_total(i32) #1

declare dso_local i32 @m_peak(i32) #1

declare dso_local i32 @m_maxlimit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
