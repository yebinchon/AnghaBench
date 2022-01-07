; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_SizeDisplay.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_SizeDisplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@screenSize = common dso_local global i32 0, align 4
@screenblocks = common dso_local global i32 0, align 4
@detailLevel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_SizeDisplay(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %22 [
    i32 0, label %4
    i32 1, label %13
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @screenSize, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load i32, i32* @screenblocks, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* @screenblocks, align 4
  %10 = load i32, i32* @screenSize, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* @screenSize, align 4
  br label %12

12:                                               ; preds = %7, %4
  br label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @screenSize, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* @screenblocks, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @screenblocks, align 4
  %19 = load i32, i32* @screenSize, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @screenSize, align 4
  br label %21

21:                                               ; preds = %16, %13
  br label %22

22:                                               ; preds = %1, %21, %12
  %23 = load i32, i32* @screenblocks, align 4
  %24 = load i32, i32* @detailLevel, align 4
  %25 = call i32 @R_SetViewSize(i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @R_SetViewSize(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
