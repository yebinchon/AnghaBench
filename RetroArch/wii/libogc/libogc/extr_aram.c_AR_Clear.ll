; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_aram.c_AR_Clear.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_aram.c_AR_Clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__ARInternalSize = common dso_local global i32 0, align 4
@__ARExpansionSize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AR_Clear(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %30 [
    i32 129, label %4
    i32 128, label %11
    i32 130, label %19
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @__ARInternalSize, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load i32, i32* @__ARInternalSize, align 4
  %9 = call i32 @__ARClearArea(i32 0, i32 %8)
  br label %10

10:                                               ; preds = %7, %4
  br label %31

11:                                               ; preds = %1
  %12 = load i32, i32* @__ARInternalSize, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @__ARInternalSize, align 4
  %16 = sub nsw i32 %15, 16384
  %17 = call i32 @__ARClearArea(i32 16384, i32 %16)
  br label %18

18:                                               ; preds = %14, %11
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @__ARInternalSize, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* @__ARExpansionSize, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @__ARInternalSize, align 4
  %27 = load i32, i32* @__ARExpansionSize, align 4
  %28 = call i32 @__ARClearArea(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %22, %19
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30, %29, %18, %10
  ret void
}

declare dso_local i32 @__ARClearArea(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
