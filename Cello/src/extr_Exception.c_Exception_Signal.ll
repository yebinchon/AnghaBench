; ModuleID = '/home/carl/AnghaBench/Cello/src/extr_Exception.c_Exception_Signal.c'
source_filename = "/home/carl/AnghaBench/Cello/src/extr_Exception.c_Exception_Signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ProgramAbortedError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Program Aborted\00", align 1
@DivisionByZeroError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Division by Zero\00", align 1
@IllegalInstructionError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Illegal Instruction\00", align 1
@ProgramInterruptedError = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Program Interrupted\00", align 1
@SegmentationError = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Segmentation fault\00", align 1
@ProgramTerminationError = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Program Terminated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Exception_Signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Exception_Signal(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %22 [
    i32 133, label %4
    i32 132, label %7
    i32 131, label %10
    i32 130, label %13
    i32 129, label %16
    i32 128, label %19
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @ProgramAbortedError, align 4
  %6 = call i32 @throw(i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %1, %4
  %8 = load i32, i32* @DivisionByZeroError, align 4
  %9 = call i32 @throw(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %1, %7
  %11 = load i32, i32* @IllegalInstructionError, align 4
  %12 = call i32 @throw(i32 %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %13

13:                                               ; preds = %1, %10
  %14 = load i32, i32* @ProgramInterruptedError, align 4
  %15 = call i32 @throw(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %16

16:                                               ; preds = %1, %13
  %17 = load i32, i32* @SegmentationError, align 4
  %18 = call i32 @throw(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %19

19:                                               ; preds = %1, %16
  %20 = load i32, i32* @ProgramTerminationError, align 4
  %21 = call i32 @throw(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @throw(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
