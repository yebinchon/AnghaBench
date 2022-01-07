; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_bb.c_PBI_BB_Frame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_bb.c_PBI_BB_Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PBI_BB_Frame.count = internal global i32 0, align 4
@buttondown = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"blackbox button up\0A\00", align 1
@BB_BUTTON_IRQ_MASK = common dso_local global i32 0, align 4
@PBI_IRQ = common dso_local global i32 0, align 4
@POKEY_OFFSET_IRQEN = common dso_local global i32 0, align 4
@POKEY_IRQEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PBI_BB_Frame() #0 {
  %1 = load i64, i64* @buttondown, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %21

3:                                                ; preds = %0
  %4 = load i32, i32* @PBI_BB_Frame.count, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i32, i32* @PBI_BB_Frame.count, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @PBI_BB_Frame.count, align 4
  br label %20

9:                                                ; preds = %3
  %10 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @D(i32 %10)
  %12 = load i32, i32* @BB_BUTTON_IRQ_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* @PBI_IRQ, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* @PBI_IRQ, align 4
  %16 = load i32, i32* @POKEY_OFFSET_IRQEN, align 4
  %17 = load i32, i32* @POKEY_IRQEN, align 4
  %18 = call i32 @POKEY_PutByte(i32 %16, i32 %17)
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* @buttondown, align 8
  store i32 0, i32* @PBI_BB_Frame.count, align 4
  br label %20

20:                                               ; preds = %9, %6
  br label %21

21:                                               ; preds = %20, %0
  ret void
}

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @POKEY_PutByte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
