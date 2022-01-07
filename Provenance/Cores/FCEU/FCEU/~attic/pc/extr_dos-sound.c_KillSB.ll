; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_KillSB.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_KillSB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hsmode = common dso_local global i64 0, align 8
@format = common dso_local global i64 0, align 8
@SBIRQ = common dso_local global i32 0, align 4
@PICMask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @KillSB() #0 {
  %1 = load i64, i64* @hsmode, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 (...) @ResetDSP()
  br label %11

5:                                                ; preds = %0
  %6 = load i64, i64* @format, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 217, i32 218
  %10 = call i32 @WriteDSP(i32 %9)
  br label %11

11:                                               ; preds = %5, %3
  %12 = call i32 @WriteDSP(i32 211)
  %13 = load i32, i32* @SBIRQ, align 4
  %14 = icmp sgt i32 %13, 7
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 161, i32 33
  %17 = load i32, i32* @PICMask, align 4
  %18 = load i32, i32* @SBIRQ, align 4
  %19 = and i32 %18, 7
  %20 = shl i32 1, %19
  %21 = or i32 %17, %20
  %22 = call i32 @outportb(i32 %16, i32 %21)
  %23 = call i32 (...) @ResetVectors()
  %24 = load i32, i32* @SBIRQ, align 4
  %25 = icmp sgt i32 %24, 7
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 161, i32 33
  %28 = load i32, i32* @PICMask, align 4
  %29 = call i32 @outportb(i32 %27, i32 %28)
  %30 = call i32 (...) @KillDMABuffer()
  ret void
}

declare dso_local i32 @ResetDSP(...) #1

declare dso_local i32 @WriteDSP(i32) #1

declare dso_local i32 @outportb(i32, i32) #1

declare dso_local i32 @ResetVectors(...) #1

declare dso_local i32 @KillDMABuffer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
