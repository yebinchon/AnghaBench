; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_cmdlib.c_CRC_ProcessByte.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_cmdlib.c_CRC_ProcessByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crctable = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRC_ProcessByte(i16* %0, i16 zeroext %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16, align 2
  store i16* %0, i16** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16*, i16** %3, align 8
  %6 = load i16, i16* %5, align 2
  %7 = zext i16 %6 to i32
  %8 = shl i32 %7, 8
  %9 = load i16*, i16** @crctable, align 8
  %10 = load i16*, i16** %3, align 8
  %11 = load i16, i16* %10, align 2
  %12 = zext i16 %11 to i32
  %13 = ashr i32 %12, 8
  %14 = load i16, i16* %4, align 2
  %15 = zext i16 %14 to i32
  %16 = xor i32 %13, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i16, i16* %9, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = xor i32 %8, %20
  %22 = trunc i32 %21 to i16
  %23 = load i16*, i16** %3, align 8
  store i16 %22, i16* %23, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
