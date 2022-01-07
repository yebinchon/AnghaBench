; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_thumb16_misc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_thumb16_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@FASTTRAP_T_PUSH_LR = common dso_local global i32 0, align 4
@FASTTRAP_T_POP_PC = common dso_local global i32 0, align 4
@FASTTRAP_T_CB_N_Z = common dso_local global i32 0, align 4
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @thumb16_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thumb16_misc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @BITS(i32 %5, i32 5, i32 127)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 112
  %9 = icmp eq i32 %8, 48
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 112
  %13 = icmp eq i32 %12, 112
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %15, i32* %2, align 4
  br label %39

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 120
  %19 = icmp eq i32 %18, 40
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @FASTTRAP_T_PUSH_LR, align 4
  store i32 %21, i32* %2, align 4
  br label %39

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 120
  %25 = icmp eq i32 %24, 104
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @FASTTRAP_T_POP_PC, align 4
  store i32 %27, i32* %2, align 4
  br label %39

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 40
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @FASTTRAP_T_CB_N_Z, align 4
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %32, %26, %20, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @BITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
