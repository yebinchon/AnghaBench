; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_tables.c_SlopeDiv.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_tables.c_SlopeDiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLOPERANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SlopeDiv(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 512
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @SLOPERANGE, align 4
  store i32 %10, i32* %3, align 4
  br label %26

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %12, 3
  %14 = load i32, i32* %5, align 4
  %15 = lshr i32 %14, 8
  %16 = udiv i32 %13, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SLOPERANGE, align 4
  %19 = icmp ule i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  br label %24

22:                                               ; preds = %11
  %23 = load i32, i32* @SLOPERANGE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
