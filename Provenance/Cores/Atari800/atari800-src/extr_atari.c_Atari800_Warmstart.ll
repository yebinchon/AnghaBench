; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_Warmstart.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari.c_Atari800_Warmstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Atari800_machine_type = common dso_local global i64 0, align 8
@Atari800_MACHINE_800 = common dso_local global i64 0, align 8
@MEMORY_axlon_num_banks = common dso_local global i64 0, align 8
@ANTIC_NMIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Atari800_Warmstart() #0 {
  %1 = load i64, i64* @Atari800_machine_type, align 8
  %2 = load i64, i64* @Atari800_MACHINE_800, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i64, i64* @MEMORY_axlon_num_banks, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call i32 @MEMORY_PutByte(i32 53247, i32 0)
  br label %9

9:                                                ; preds = %7, %4
  store i32 63, i32* @ANTIC_NMIST, align 4
  %10 = call i32 (...) @CPU_NMI()
  br label %16

11:                                               ; preds = %0
  %12 = call i32 (...) @PBI_Reset()
  %13 = call i32 (...) @PIA_Reset()
  %14 = call i32 (...) @ANTIC_Reset()
  %15 = call i32 (...) @CPU_Reset()
  br label %16

16:                                               ; preds = %11, %9
  ret void
}

declare dso_local i32 @MEMORY_PutByte(i32, i32) #1

declare dso_local i32 @CPU_NMI(...) #1

declare dso_local i32 @PBI_Reset(...) #1

declare dso_local i32 @PIA_Reset(...) #1

declare dso_local i32 @ANTIC_Reset(...) #1

declare dso_local i32 @CPU_Reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
