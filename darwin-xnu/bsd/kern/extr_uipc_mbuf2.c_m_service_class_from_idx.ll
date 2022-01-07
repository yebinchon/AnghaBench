; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_service_class_from_idx.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_service_class_from_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBUF_SC_BE = common dso_local global i32 0, align 4
@MBUF_SC_BK_SYS = common dso_local global i32 0, align 4
@MBUF_SC_BK = common dso_local global i32 0, align 4
@MBUF_SC_RD = common dso_local global i32 0, align 4
@MBUF_SC_OAM = common dso_local global i32 0, align 4
@MBUF_SC_AV = common dso_local global i32 0, align 4
@MBUF_SC_RV = common dso_local global i32 0, align 4
@MBUF_SC_VI = common dso_local global i32 0, align 4
@MBUF_SC_VO = common dso_local global i32 0, align 4
@MBUF_SC_CTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m_service_class_from_idx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @MBUF_SC_BE, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %27 [
    i32 134, label %7
    i32 135, label %9
    i32 136, label %11
    i32 131, label %13
    i32 132, label %15
    i32 137, label %17
    i32 130, label %19
    i32 129, label %21
    i32 128, label %23
    i32 133, label %25
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @MBUF_SC_BK_SYS, align 4
  store i32 %8, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = load i32, i32* @MBUF_SC_BK, align 4
  store i32 %10, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = load i32, i32* @MBUF_SC_BE, align 4
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load i32, i32* @MBUF_SC_RD, align 4
  store i32 %14, i32* %2, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load i32, i32* @MBUF_SC_OAM, align 4
  store i32 %16, i32* %2, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load i32, i32* @MBUF_SC_AV, align 4
  store i32 %18, i32* %2, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @MBUF_SC_RV, align 4
  store i32 %20, i32* %2, align 4
  br label %31

21:                                               ; preds = %1
  %22 = load i32, i32* @MBUF_SC_VI, align 4
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load i32, i32* @MBUF_SC_VO, align 4
  store i32 %24, i32* %2, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load i32, i32* @MBUF_SC_CTL, align 4
  store i32 %26, i32* %2, align 4
  br label %31

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27
  %29 = call i32 @VERIFY(i32 0)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
