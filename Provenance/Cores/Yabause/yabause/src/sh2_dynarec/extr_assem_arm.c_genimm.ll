; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_genimm.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_arm.c_genimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genimm(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %3, align 4
  br label %34

11:                                               ; preds = %2
  store i32 32, i32* %6, align 4
  br label %12

12:                                               ; preds = %25, %11
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 30
  %21 = shl i32 %20, 7
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %21, %22
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  store i32 1, i32* %3, align 4
  br label %34

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = ashr i32 %26, 2
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 %28, 30
  %30 = or i32 %27, %29
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 2
  store i32 %32, i32* %6, align 4
  br label %12

33:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %18, %9
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
