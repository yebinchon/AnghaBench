; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_esc.c_ESC_UpdatePatches.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_esc.c_ESC_UpdatePatches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_5200 = common dso_local global i64 0, align 8
@Atari800_MACHINE_XLXE = common dso_local global i64 0, align 8
@PIA_PORTB = common dso_local global i32 0, align 4
@Atari800_MACHINE_800 = common dso_local global i64 0, align 8
@MEMORY_os = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ESC_UpdatePatches() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @Atari800_machine_type, align 8
  %3 = load i64, i64* @Atari800_MACHINE_5200, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %36

5:                                                ; preds = %0
  %6 = load i64, i64* @Atari800_machine_type, align 8
  %7 = load i64, i64* @Atari800_MACHINE_XLXE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load i32, i32* @PIA_PORTB, align 4
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %9, %5
  %14 = load i64, i64* @Atari800_machine_type, align 8
  %15 = load i64, i64* @Atari800_MACHINE_800, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 55296, i32 49152
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %19, 53248
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load i64, i64* @MEMORY_os, align 8
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = sub nsw i32 53248, %24
  %26 = call i32 @MEMORY_dCopyToMem(i64 %22, i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %21, %13
  %28 = load i64, i64* @MEMORY_os, align 8
  %29 = add nsw i64 %28, 55296
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %29, %31
  %33 = call i32 @MEMORY_dCopyToMem(i64 %32, i32 55296, i32 10240)
  %34 = call i32 (...) @ESC_PatchOS()
  %35 = call i32 (...) @Devices_UpdatePatches()
  br label %36

36:                                               ; preds = %27, %9, %0
  ret void
}

declare dso_local i32 @MEMORY_dCopyToMem(i64, i32, i32) #1

declare dso_local i32 @ESC_PatchOS(...) #1

declare dso_local i32 @Devices_UpdatePatches(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
