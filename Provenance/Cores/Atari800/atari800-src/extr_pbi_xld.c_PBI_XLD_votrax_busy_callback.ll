; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_xld.c_PBI_XLD_votrax_busy_callback.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_xld.c_PBI_XLD_votrax_busy_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@votrax_latch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"votrax IRQ generated\0A\00", align 1
@VOICE_MASK = common dso_local global i32 0, align 4
@PBI_IRQ = common dso_local global i32 0, align 4
@POKEY_OFFSET_IRQEN = common dso_local global i32 0, align 4
@POKEY_IRQEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PBI_XLD_votrax_busy_callback(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @votrax_latch, align 4
  %7 = and i32 %6, 128
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @D(i32 %10)
  %12 = call i32 (...) @CPU_GenerateIRQ()
  %13 = load i32, i32* @VOICE_MASK, align 4
  %14 = load i32, i32* @PBI_IRQ, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* @PBI_IRQ, align 4
  br label %33

16:                                               ; preds = %5, %1
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load i32, i32* @PBI_IRQ, align 4
  %21 = load i32, i32* @VOICE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32, i32* @VOICE_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* @PBI_IRQ, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* @PBI_IRQ, align 4
  %29 = load i32, i32* @POKEY_OFFSET_IRQEN, align 4
  %30 = load i32, i32* @POKEY_IRQEN, align 4
  %31 = call i32 @POKEY_PutByte(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %24, %19, %16
  br label %33

33:                                               ; preds = %32, %9
  ret void
}

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @CPU_GenerateIRQ(...) #1

declare dso_local i32 @POKEY_PutByte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
